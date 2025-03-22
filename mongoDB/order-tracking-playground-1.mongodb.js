
const database = 'db';
const collection = 'Orders';

use(database);


// Create Collection
db.createCollection('Orders');


// Insert Single Document 
db.Orders.insertOne({
  "_id": 1,
  "order_id": 1,
  "rider_id": 1,  
  "user_id": 3,    
  "status": "requested",  
  "pickup": {
    "location": {
      "type": "Point",
      "coordinates": [78.9629, 20.5937],  
      "accuracy": 5
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
    "location": {
      "type": "Point",
      "coordinates": [77.0369, 28.7041],  
      "accuracy": 5
    },
    "address": {
      "formatted": "456 Another St, City, State, 54321",
      "street": "456 Another St",
      "city": "City",
      "state": "State",
      "country": "Country",
      "postal_code": "54321"
    },
    "timestamp": new Date()
  },
  "route": {
    "current_path": {
      "type": "LineString",
      "coordinates": [[78.9629, 20.5937], [77.0369, 28.7041]]  
    },
    "alternative_paths": [{
      "path": {
        "type": "LineString",
        "coordinates": [[78.9629, 20.5937], [77.0369, 28.7041]]  
      },
      "estimated_duration": 30,
      "estimated_distance": 15,
      "reason": "traffic"
    }],
    "distance": {
      "estimated": 15,
      "actual": 14.8,
      "unit": "km"
    },
    "duration": {
      "estimated": 30,
      "actual": 28,
      "unit": "minutes"
    },
    "waypoints": [{
      "location": {
        "type": "Point",
        "coordinates": [78.9629, 20.5937]  
      },
      "timestamp": new Date(),
      "type": "planned",
      "sequence": 1,
      "status": "reached"
    }],
    "route_changes": [{
      "timestamp": new Date(),
      "reason": "traffic",
      "previous_path": {
        "type": "LineString",
        "coordinates": [[78.9629, 20.5937], [77.0369, 28.7041]]  
      },
      "new_path": {
        "type": "LineString",
        "coordinates": [[78.9630, 20.5938], [77.0370, 28.7042]]  
      },
      "distance_impact": 2,
      "duration_impact": 10
    }]
  },
  "metadata": {
    "dispatch_id": "dispatch123",
    "service_type": "standard",
    "vehicle_type": "car",
    "route_optimization_version": "v1.0",
    "pricing_version": "v1.2",
    "matching_algorithm_version": "v1.0",
    "system_notes": [{
      "timestamp": new Date(),
      "type": "info",
      "message": "Order created",
      "severity": "low"
    }]
  },
  "created_at": new Date(),
  "updated_at": new Date()
});


// Insert Multiple Documents

db.Orders.insertMany([
  {
    "_id": 2,
  "order_id": 2,
  "rider_id": 3,  
  "user_id": 5,    
    "status": "in_progress",  
    "pickup": {
      "location": {
        "type": "Point",
        "coordinates": [77.2090, 28.6139],  
        "accuracy": 5
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
      "location": {
        "type": "Point",
        "coordinates": [77.0369, 28.7041],  
        "accuracy": 5
      },
      "address": {
        "formatted": "456 Another St, City, State, 54321",
        "street": "456 Another St",
        "city": "City",
        "state": "State",
        "country": "Country",
        "postal_code": "54321"
      },
      "timestamp": new Date()
    },
    "route": {
      "current_path": {
        "type": "LineString",
        "coordinates": [[77.2090, 28.6139], [77.0369, 28.7041]]  
      },
      "alternative_paths": [{
        "path": {
          "type": "LineString",
          "coordinates": [[77.2090, 28.6139], [77.0369, 28.7041]]  
        },
        "estimated_duration": 30,
        "estimated_distance": 15,
        "reason": "weather"
      }],
      "distance": {
        "estimated": 15,
        "actual": 14.8,
        "unit": "km"
      },
      "duration": {
        "estimated": 30,
        "actual": 28,
        "unit": "minutes"
      },
      "waypoints": [{
        "location": {
          "type": "Point",
          "coordinates": [77.2090, 28.6139]  
        },
        "timestamp": new Date(),
        "type": "planned",
        "sequence": 1,
        "status": "reached"
      }],
      "route_changes": [{
        "timestamp": new Date(),
        "reason": "accident",
        "previous_path": {
          "type": "LineString",
          "coordinates": [[77.2090, 28.6139], [77.0369, 28.7041]]  
        },
        "new_path": {
          "type": "LineString",
          "coordinates": [[77.2090, 28.6139], [77.0370, 28.7043]]  
        },
        "distance_impact": 1,
        "duration_impact": 5
      }]
    },
    "metadata": {
      "dispatch_id": "dispatch124",
      "service_type": "premium",
      "vehicle_type": "bike",
      "route_optimization_version": "v1.1",
      "pricing_version": "v1.3",
      "matching_algorithm_version": "v1.1",
      "system_notes": [{
        "timestamp": new Date(),
        "type": "error",
        "message": "Route changed due to accident",
        "severity": "high"
      }]
    },
    "created_at": new Date(),
    "updated_at": new Date()
  }
]);


// Find One Document

db.Orders.findOne({ "order_id": 2 });



// Find Many Documents
db.Orders.find({ "status": "in_progress" }).toArray();  

// Update One Document

db.Orders.updateOne(
  { "order_id": 2 },  
  { $set: { 
      "status": "completed",  
      "dropoff.address.city": "New City",  
      "route.distance.actual": 14.9  
    } 
  }
);

// Update Multiple Documents
db.Orders.updateMany(
  { "status": "requested" },  
  { $set: { 
      "status": "accepted",  
      "route.distance.estimated": 20  
    } 
  }
);


// Delete One Document
db.Orders.deleteOne({ "order_id": 3 });


// Delete Many Documents
db.Orders.deleteMany({ "status": "cancelled" });


// Delete ALL Documents
db.Orders.deleteMany({});
