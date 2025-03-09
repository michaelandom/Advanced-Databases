# MongoDB Operations Guide

## Table of Contents
- [1. Database Creation](#1-database-creation)
- [2. Collections](#2-collections)
- [3. Document Operations](#3-document-operations)
  - [3.1 Single Document Operations](#31-single-document-operations)
  - [3.2 Multiple Document Operations](#32-multiple-document-operations)
- [4. Querying Documents](#4-querying-documents)
- [5. Updating Documents](#5-updating-documents)
- [6. Deleting Documents](#6-deleting-documents)

## 1. Database Creation
```javascript
use db;
```

## 2. Collections
Create the required collections:
```javascript
db.createCollection('ActivityLogs');
db.createCollection('LocationTracking');
db.createCollection('Orders');
```

## 3. Document Operations

### 3.1 Single Document Operations

#### Activity Log Entry
```javascript
db.ActivityLogs.insertOne({
  "userId": "user123",
  "riderId": "rider456",
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
```

#### Location Tracking Entry
```javascript
db.LocationTracking.insertOne({
  "riderId": "rider123",
  "timestamp": new Date(),
  "location": {
    "type": "Point",
    "coordinates": [78.9629, 20.5937],
    "accuracy": 5,
    "altitude": 100,
    "altitude_accuracy": 5
  },
  "speed": 45,
  "heading": 90,
  "acceleration": {
    "x": 0.1,
    "y": 0.2,
    "z": 0.3
  },
  "battery_level": 85,
  "battery_status": "not_charging",
  "order_id": "order123",
  "status": "moving",
  "signal_strength": 75,
  "network_type": "4G",
  "metadata": {
    "device_id": "device123",
    "app_state": "foreground",
    "location_permission": "always",
    "location_source": "gps"
  }
});
```

#### Order Entry
```javascript
db.Orders.insertOne({
  "order_id": "order123",
  "riderId": "rider123",
  "userId": "user123",
  "status": "requested",
  "pickup": {
    "location": {
      "type": "Point",
      "coordinates": [78.9629, 20.5937]
    },
    "address": {
      "formatted": "123 Main St, City, State, 12345",
      "street": "123 Main St",
      "city": "City",
      "state": "State",
      "country": "Country",
      "postal_code": "12345"
    },
    "timestamp": new Date()
  },
  "dropoff": {
    // Similar structure to pickup
  },
  "route": {
    "current_path": {
      "type": "LineString",
      "coordinates": [[78.9629, 20.5937], [77.0369, 28.7041]]
    },
    "distance": {
      "estimated": 15,
      "actual": 14.8,
      "unit": "km"
    },
    "duration": {
      "estimated": 30,
      "actual": 28,
      "unit": "minutes"
    }
  }
});
```

### 3.2 Multiple Document Operations

#### Insert Multiple Orders
```javascript
db.Orders.insertMany([
  {
    "order_id": "order124",
    "status": "in_progress",
    // ... other fields
  },
  // Additional orders
]);
```

## 4. Querying Documents

### Simple Queries
```javascript
// Find single document
db.ActivityLogs.findOne({ "userId": "user123" });
db.LocationTracking.findOne({ "riderId": "rider123" });
db.Orders.findOne({ "order_id": "order123" });

// Find multiple documents
db.ActivityLogs.find({ "type": "login" }).toArray();
db.LocationTracking.find({ "status": "moving" }).toArray();
db.Orders.find({ "status": "in_progress" }).toArray();
```

## 5. Updating Documents

### Single Document Updates
```javascript
db.ActivityLogs.updateOne(
  { "userId": "user123" },
  { 
    $set: { 
      "details.action": "profile_update",
      "details.action_reason": "user_request"
    }
  }
);

db.Orders.updateOne(
  { "order_id": "order123" },
  {
    $set: {
      "status": "completed",
      "dropoff.address.city": "New City"
    }
  }
);
```

### Multiple Document Updates
```javascript
db.ActivityLogs.updateMany(
  { "type": "trip_start" },
  {
    $set: {
      "details.action": "trip_complete",
      "metadata.service_version": "v1.2"
    }
  }
);

db.Orders.updateMany(
  { "status": "requested" },
  {
    $set: {
      "status": "accepted",
      "route.distance.estimated": 20
    }
  }
);
```

## 6. Deleting Documents

### Single Document Deletion
```javascript
db.ActivityLogs.deleteOne({ "userId": "user123" });
db.LocationTracking.deleteOne({ "riderId": "rider123" });
db.Orders.deleteOne({ "order_id": "order123" });
```

### Multiple Document Deletion
```javascript
db.ActivityLogs.deleteMany({ "type": "login" });
db.LocationTracking.deleteMany({ "status": "idle" });
db.Orders.deleteMany({ "status": "cancelled" });
```
