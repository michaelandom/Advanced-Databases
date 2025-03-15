/**
 * Finds all active riders within a specified radius of a location
 */
CALL sp_get_active_riders_in_radius(-33.8688, 151.2093, 5); 

/**
 * Creates a new delivery order
 */
CALL sp_create_order(
    5,                          
    'CAR',                           
    40.712776,                       
    -74.005974,                      
    '123 Main St, New York, NY',     
    'John Doe',                      
    '555-1234',
    '[\"http://example.com/photo1.jpg\", \"http://example.com/photo2.jpg\"]',
    @order_id                        
);
SELECT @order_id;


/**
 * Get Rider Performance
 * Retrieves performance metrics for a rider
 */

CALL sp_get_rider_performance(
    7,          
    '2023-01-01',   
    '2025-03-15'    
);

/**
 * Process Order Review
 * Adds a review for a completed order
 */


CALL sp_process_order_review(
    7,      
    8,      
    'Great service!',  
    5           
);


/**
 * Add Order Destination
 * Adds a destination to an existing order
 */

CALL sp_add_order_destination(
    1,
    37.774929,
    -122.419418,
    '123 Main St, San Francisco',
    'John Doe',
    '+1234567890',
    1
);



/**
 * Processes quiz results for a rider
 */
CALL sp_process_rider_quiz(
    1,                       
    'INITIAL_QUIZ',              
    @passed                     
);

SELECT @passed;