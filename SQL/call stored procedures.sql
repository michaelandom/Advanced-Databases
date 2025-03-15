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




