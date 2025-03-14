/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'db';
const collection = 'ActivityLogs';
use(database);

// 1. Count activities by type
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: "$type",
      count: { $sum: 1 }
    }
  },
  {
    $sort: { count: -1 }
  }
]);

// 2. Get user activity summary
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: "$user_id",
      total_activities: { $sum: 1 },
      activity_types: { $addToSet: "$type" },
      last_activity: { $max: "$timestamp" },
      platforms_used: { $addToSet: "$details.platform" }
    }
  },
  {
    $sort: { total_activities: -1 }
  }
]);

// 3. Get activity trends by hour
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: {
        hour: { $hour: "$timestamp" },
        type: "$type"
      },
      count: { $sum: 1 }
    }
  },
  {
    $sort: { "_id.hour": 1, count: -1 }
  }
]);

// 4. Get device usage statistics
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: {
        device_type: "$details.device_info.type",
        os: "$details.device_info.os"
      },
      count: { $sum: 1 },
      users: { $addToSet: "$user_id" }
    }
  },
  {
    $project: {
      device_type: "$_id.device_type",
      os: "$_id.os",
      count: 1,
      unique_users: { $size: "$users" }
    }
  },
  {
    $sort: { count: -1 }
  }
]);

// 5. Get activity patterns by region
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: "$metadata.region",
      total_activities: { $sum: 1 },
      activity_types: { $addToSet: "$type" },
      unique_users: { $addToSet: "$user_id" }
    }
  },
  {
    $project: {
      region: "$_id",
      total_activities: 1,
      activity_types: 1,
      unique_user_count: { $size: "$unique_users" }
    }
  },
  {
    $sort: { total_activities: -1 }
  }
]);

// 6. Get session analysis
db.ActivityLogs.aggregate([
  {
    $group: {
      _id: "$metadata.session_id",
      activities: { $push: "$type" },
      duration: {
        $subtract: [
          { $max: "$timestamp" },
          { $min: "$timestamp" }
        ]
      },
      user_id: { $first: "$user_id" }
    }
  },
  {
    $project: {
      session_id: "$_id",
      user_id: 1,
      activity_count: { $size: "$activities" },
      duration_seconds: { $divide: ["$duration", 1000] },
      activities: 1
    }
  },
  {
    $sort: { duration_seconds: -1 }
  }
]);

// 7. Get feature flag usage
db.ActivityLogs.aggregate([
  {
    $unwind: "$metadata.feature_flags"
  },
  {
    $group: {
      _id: "$metadata.feature_flags",
      usage_count: { $sum: 1 },
      unique_users: { $addToSet: "$user_id" }
    }
  },
  {
    $project: {
      feature_flag: "$_id",
      usage_count: 1,
      unique_users_count: { $size: "$unique_users" }
    }
  },
  {
    $sort: { usage_count: -1 }
  }
]); 