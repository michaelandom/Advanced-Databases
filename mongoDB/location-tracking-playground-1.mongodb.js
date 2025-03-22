/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = 'db';
const collection = 'LocationTracking';

// The current database to use.
use(database);

// Create a new collection.
db.createCollection(collection);


// Insert Single Document 
db.LocationTracking.insertOne({
  "rider_id": 1,
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
  "order_tracking_id": 3,  
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


// Insert Multiple Documents
db.LocationTracking.insertMany([
  {
    "rider_id": 1,
    "timestamp": new Date(),
    "location": {
      "type": "Point",
      "coordinates": [77.0369, 28.7041],
      "accuracy": 10,
      "altitude": 80,
      "altitude_accuracy": 8
    },
    "speed": 35,
    "heading": 270,
    "acceleration": {
      "x": 0.2,
      "y": 0.3,
      "z": 0.4
    },
    "battery_level": 75,
    "battery_status": "charging",
    "order_tracking_id": 1,
    "status": "idle",
    "signal_strength": 65,
    "network_type": "5G",
    "metadata": {
      "device_id": "device124",
      "app_state": "background",
      "location_permission": "while_using",
      "location_source": "network"
    }
  },
  {
    "rider_id": 3,
    "timestamp": new Date(),
    "location": {
      "type": "Point",
      "coordinates": [77.2090, 28.6139],
      "accuracy": 15,
      "altitude": 90,
      "altitude_accuracy": 10
    },
    "speed": 50,
    "heading": 180,
    "acceleration": {
      "x": 0.4,
      "y": 0.5,
      "z": 0.6
    },
    "battery_level": 60,
    "battery_status": "not_charging",
    "order_tracking_id": 2,
    "status": "moving",
    "signal_strength": 80,
    "network_type": "WiFi",
    "metadata": {
      "device_id": "device125",
      "app_state": "foreground",
      "location_permission": "always",
      "location_source": "fusion"
    }
  },
  {
    "rider_id": 5,
    "timestamp": new Date(),
    "location": {
      "type": "Point",
      "coordinates": [78.4867, 17.3850],
      "accuracy": 12,
      "altitude": 85,
      "altitude_accuracy": 9
    },
    "speed": 45,
    "heading": 90,
    "acceleration": {
      "x": 0.3,
      "y": 0.2,
      "z": 0.1
    },
    "battery_level": 50,
    "battery_status": "charging",
    "order_tracking_id": 3,
    "status": "moving",
    "signal_strength": 72,
    "network_type": "4G",
    "metadata": {
      "device_id": "device126",
      "app_state": "active",
      "location_permission": "always",
      "location_source": "GPS"
    }
  },
  {
    "rider_id": 7,
    "timestamp": new Date(),
    "location": {
      "type": "Point",
      "coordinates": [72.8777, 19.0760],
      "accuracy": 18,
      "altitude": 70,
      "altitude_accuracy": 7
    },
    "speed": 30,
    "heading": 360,
    "acceleration": {
      "x": 0.1,
      "y": 0.2,
      "z": 0.3
    },
    "battery_level": 85,
    "battery_status": "charging",
    "order_tracking_id": 4,
    "status": "idle",
    "signal_strength": 78,
    "network_type": "5G",
    "metadata": {
      "device_id": "device127",
      "app_state": "background",
      "location_permission": "while_using",
      "location_source": "network"
    }
  },
  {
    "rider_id": 9,
    "timestamp": new Date(),
    "location": {
      "type": "Point",
      "coordinates": [80.2785, 13.0878],
      "accuracy": 14,
      "altitude": 95,
      "altitude_accuracy": 10
    },
    "speed": 55,
    "heading": 270,
    "acceleration": {
      "x": 0.5,
      "y": 0.6,
      "z": 0.7
    },
    "battery_level": 40,
    "battery_status": "not_charging",
    "order_tracking_id": 5,
    "status": "moving",
    "signal_strength": 70,
    "network_type": "LTE",
    "metadata": {
      "device_id": "device128",
      "app_state": "foreground",
      "location_permission": "always",
      "location_source": "GPS"
    }
  }
]);



// Find One Document
db.LocationTracking.findOne({ "rider_id": 3 });



// Find Many Documents
db.LocationTracking.find({ "status": "moving" }).toArray(); 

// Update One Document
db.LocationTracking.updateOne(
  { "rider_id": 3 },  
  { $set: { 
      "location.coordinates": [79.0000, 20.0000],  
      "status": "idle",  
      "battery_level": 90  
    } 
  }
);


// Update Multiple Documents
db.LocationTracking.updateOne(
  { "status": "moving" },  
  { $set: { 
    "status": "idle",  
      "battery_level": 85  
    } 
  }
);


// Delete One Document
db.LocationTracking.deleteOne({ "rider_id": 3  });

// Delete Many Documents
db.LocationTracking.deleteMany({ "status": "idle" });


// Delete All Documents
db.LocationTracking.deleteMany({});