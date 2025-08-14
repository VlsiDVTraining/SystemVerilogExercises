program temp();
  initial begin
    int unsigned temp_readings[10];
    int unsigned total_reading;
    
    //temp_readings = '{10,20,30,40,50,15,25,35,45,55};
    void'(std::randomize(temp_readings) with {unique{temp_readings}; foreach(temp_readings[idx]) {temp_readings[idx] inside {[10:30]};}});
                                        
    //for(int idx = 0; idx < 10; idx++) begin
    foreach(temp_readings[idx]) begin
      total_reading += temp_readings[idx];
    end
    
    $display("%0t - Total Count = %0d ::: Readings = %p", $time, total_reading, temp_readings);
  end
endprogram
