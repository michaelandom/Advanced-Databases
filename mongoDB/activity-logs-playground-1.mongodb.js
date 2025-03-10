/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'db';
const collection = 'ActivityLogs';
// The current database to use.
use(database);

// Create a new collection.
db.createCollection(collection);

// InsertOne ActivityLogs
db.ActivityLogs.insertOne({
    "user_id": 3,
    "rider_id": 1,
    "type": "login",
    "timestamp": new Date(),
    "details": {
      "action": "login",
      "action_source": "user",
      "action_reason": "user_request",
      "platform": "mobile",
      "ip_address": "192.168.1.1",
      "location": {
        "type": "Point",
        "coordinates": [78.9629, 20.5937],
        "accuracy": 50,
        "altitude": 100
      },
      "device_info": {
        "type": "smartphone",
        "os": "Android",
        "os_version": "11",
        "browser": "Chrome",
        "browser_version": "91",
        "app_version": "1.2.3"
      }
    },
    "metadata": {
      "session_id": "session123",
      "request_id": "req123",
      "correlation_id": "corr123",
      "previous_event_id": "prev_event123",
      "service_version": "v1.0",
      "feature_flags": ["featureX", "featureY"],
      "environment": "prod",
      "region": "us-west"
    }
  });

// Insert Multiple Documents

db.ActivityLogs.insertMany([
    {
      "user_id": 5,
      "rider_id": 2,
      "type": "trip_start",
      "timestamp": new Date(),
      "details": {
        "action": "trip_start",
        "action_source": "system",
        "action_reason": "user_request",
        "platform": "mobile",
        "ip_address": "192.168.1.2",
        "location": {
          "type": "Point",
          "coordinates": [77.0369, 28.6139],
          "accuracy": 30,
          "altitude": 120
        },
        "device_info": {
          "type": "tablet",
          "os": "iOS",
          "os_version": "14",
          "browser": "Safari",
          "browser_version": "14.0",
          "app_version": "2.1.0"
        }
      },
      "metadata": {
        "session_id": "session124",
        "request_id": "req124",
        "correlation_id": "corr124",
        "previous_event_id": "prev_event124",
        "service_version": "v1.1",
        "feature_flags": ["featureZ"],
        "environment": "prod",
        "region": "us-east"
      }
    },
    {
      "user_id": 5,
      "rider_id": 2,
      "type": "trip_end",
      "timestamp": new Date(),
      "details": {
        "action": "trip_end",
        "action_source": "system",
        "action_reason": "traffic",
        "platform": "mobile",
        "ip_address": "192.168.1.3",
        "location": {
          "type": "Point",
          "coordinates": [77.2090, 28.7041],
          "accuracy": 20,
          "altitude": 80
        },
        "device_info": {
          "type": "smartphone",
          "os": "Android",
          "os_version": "10",
          "browser": "Chrome",
          "browser_version": "90",
          "app_version": "2.0.0"
        }
      },
      "metadata": {
        "session_id": "session125",
        "request_id": "req125",
        "correlation_id": "corr125",
        "previous_event_id": "prev_event125",
        "service_version": "v1.2",
        "feature_flags": ["featureA", "featureB"],
        "environment": "staging",
        "region": "eu-central"
      }
    }
  ]);
  
// Find One Document
db.ActivityLogs.findOne({ "rider_id": 1 });

// Find Many Documents

db.ActivityLogs.find({ "type": "login" }).toArray(); 

//  Update One Document
db.ActivityLogs.updateOne(
    { "user_id": 3 }, 
    { $set: { 
        "details.action": "profile_update",
        "details.action_reason": "user_request",
        "metadata.service_version": "v1.1"
      } 
    }
  );

// Update Multiple Documents

db.ActivityLogs.updateMany(
    { "type": "trip_start" }, 
    { $set: { 
        "metadata.service_version": "v1.2"
      } 
    }
  );

//  Delete One Document
db.ActivityLogs.deleteOne({ "user_id": 3 });


// Delete Many Documents
db.ActivityLogs.deleteMany({ "type": "trip_start" });

