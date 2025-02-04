#ifndef UNIT_TEST_ROUTER_KERNEL_PERF
#define UNIT_TEST_ROUTER_KERNEL_PERF

//Test from flit to flit
TEST_CASE( "ROUTER:KERNEL:PERF:1" ) {

    
    galapagos::kernel<ap_uint<64> > kern0(0, my_logger);
    galapagos::kernel<ap_uint<64> > kern1(0, my_logger);
   
    kern0.set_func(kern_generate_flit); 
    kern1.set_func(kern_output_flit_perf); 



    bool done = false;
    std::mutex mutex_done;
    int packets_in_flight;
    std::mutex mutex_packets_in_flight;

//    std::thread t(axis_fifo, kern0.get_m_axis(), kern1.get_s_axis(), NUM_ITERATIONS);
    
    std::vector<std::string> kern_info_table;
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 0 node address is 10.1.2.155
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 1 node address is 10.1.2.155
    
    galapagos::done_clean dc(&done, &mutex_done, my_logger);

    galapagos::local_router <ap_uint<64> > router(kern_info_table, 
                				 std::string("10.1.2.155"), 
                				 &dc, 
                				 &mutex_packets_in_flight,
                				 &packets_in_flight,
                				 my_logger
                				);

 
    router.add_interface_pair(kern0.get_s_axis(), kern0.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.add_interface_pair(kern1.get_s_axis(), kern1.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.start();

    kern0.start();
    kern1.start();
    kern0.barrier();
    kern1.barrier();
 
    { 
    	std::unique_lock<std::mutex> lock(mutex_done);
	done = true;
    } 

    dc.wait_for_clean();
    std::chrono::duration<double> diff = end-start;
    std::cout << std::endl << " ......................." << Catch::getResultCapture().getCurrentTestName() << "......................." << std::endl;
    std::cout << "RUNTIME:"  <<  diff.count() << " s" << std::endl;
    std::cout << "TRANSFER_RATE:"  <<  ((MAX_BUFFER*NUM_ITERATIONS*sizeof(ap_uint<64>))/diff.count()/(1024*1024)) << " MB/s" << std::endl;

}


//Test from flit to flit
TEST_CASE( "ROUTER:KERNEL:PERF:2" ) {

    
    galapagos::kernel<ap_uint<64> > kern0(0, my_logger);
    galapagos::kernel<ap_uint<64> > kern1(0, my_logger);
   
    kern0.set_func(kern_generate_packet); 
    kern1.set_func(kern_output_flit_perf); 



    bool done = false;
    std::mutex mutex_done;
    int packets_in_flight;
    std::mutex mutex_packets_in_flight;

//    std::thread t(axis_fifo, kern0.get_m_axis(), kern1.get_s_axis(), NUM_ITERATIONS);
    
    std::vector<std::string> kern_info_table;
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 0 node address is 10.1.2.155
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 1 node address is 10.1.2.155
    
    galapagos::done_clean dc(&done, &mutex_done, my_logger);

    galapagos::local_router <ap_uint<64> > router(kern_info_table, 
                				 std::string("10.1.2.155"), 
                				 &dc, 
                				 &mutex_packets_in_flight,
                				 &packets_in_flight,
                				 my_logger
                				);

 
    router.add_interface_pair(kern0.get_s_axis(), kern0.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.add_interface_pair(kern1.get_s_axis(), kern1.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.start();

    kern0.start();
    kern1.start();
    kern0.barrier();
    kern1.barrier();
 
    { 
    	std::unique_lock<std::mutex> lock(mutex_done);
	    done = true;
    } 

    dc.wait_for_clean();
    std::chrono::duration<double> diff = end-start;
    std::cout << std::endl << " ......................." << Catch::getResultCapture().getCurrentTestName() << "......................." << std::endl;
    std::cout << "RUNTIME:"  <<  diff.count() << " s" << std::endl;
    std::cout << "TRANSFER_RATE:"  <<  ((MAX_BUFFER*NUM_ITERATIONS*sizeof(ap_uint<64>))/diff.count()/(1024*1024)) << " MB/s" << std::endl;

}

//Test from flit to flit
TEST_CASE( "ROUTER:KERNEL:PERF:3" ) {

    
    galapagos::kernel<ap_uint<64> > kern0(0, my_logger);
    galapagos::kernel<ap_uint<64> > kern1(0, my_logger);
   
    kern0.set_func(kern_generate_flit); 
    kern1.set_func(kern_output_packet_perf); 



    bool done = false;
    std::mutex mutex_done;
    int packets_in_flight;
    std::mutex mutex_packets_in_flight;

//    std::thread t(axis_fifo, kern0.get_m_axis(), kern1.get_s_axis(), NUM_ITERATIONS);
    
    std::vector<std::string> kern_info_table;
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 0 node address is 10.1.2.155
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 1 node address is 10.1.2.155
    
    galapagos::done_clean dc(&done, &mutex_done, my_logger);

    galapagos::local_router <ap_uint<64> > router(kern_info_table, 
                				 std::string("10.1.2.155"), 
                				 &dc, 
                				 &mutex_packets_in_flight,
                				 &packets_in_flight,
                				 my_logger
                				);

 
    router.add_interface_pair(kern0.get_s_axis(), kern0.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.add_interface_pair(kern1.get_s_axis(), kern1.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.start();

    kern0.start();
    kern1.start();
    kern0.barrier();
    kern1.barrier();
 
    { 
    	std::unique_lock<std::mutex> lock(mutex_done);
	    done = true;
    } 

    dc.wait_for_clean();
    std::chrono::duration<double> diff = end-start;
    std::cout << std::endl << " ......................." << Catch::getResultCapture().getCurrentTestName() << "......................." << std::endl;
    std::cout << "RUNTIME:"  <<  diff.count() << " s" << std::endl;
    std::cout << "TRANSFER_RATE:"  <<  ((MAX_BUFFER*NUM_ITERATIONS*sizeof(ap_uint<64>))/diff.count()/(1024*1024)) << " MB/s" << std::endl;

}


//Test from flit to flit
TEST_CASE( "ROUTER:KERNEL:PERF:4" ) {

    
    galapagos::kernel<ap_uint<64> > kern0(0, my_logger);
    galapagos::kernel<ap_uint<64> > kern1(0, my_logger);
   
    kern0.set_func(kern_generate_packet); 
    kern1.set_func(kern_output_packet_perf); 



    bool done = false;
    std::mutex mutex_done;
    int packets_in_flight;
    std::mutex mutex_packets_in_flight;

//    std::thread t(axis_fifo, kern0.get_m_axis(), kern1.get_s_axis(), NUM_ITERATIONS);
    
    std::vector<std::string> kern_info_table;
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 0 node address is 10.1.2.155
    kern_info_table.push_back(std::string("10.1.2.155")); //kern 1 node address is 10.1.2.155
    
    galapagos::done_clean dc(&done, &mutex_done, my_logger);

    galapagos::local_router <ap_uint<64> > router(kern_info_table, 
                				 std::string("10.1.2.155"), 
                				 &dc, 
                				 &mutex_packets_in_flight,
                				 &packets_in_flight,
                				 my_logger
                				);

 
    router.add_interface_pair(kern0.get_s_axis(), kern0.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.add_interface_pair(kern1.get_s_axis(), kern1.get_m_axis()); //!< adds a pair of axis interfaces to the router
    router.start();

    kern0.start();
    kern1.start();
    kern0.barrier();
    kern1.barrier();
 
    { 
    	std::unique_lock<std::mutex> lock(mutex_done);
	    done = true;
    } 

    dc.wait_for_clean();
    std::chrono::duration<double> diff = end-start;
    std::cout << std::endl << " ......................." << Catch::getResultCapture().getCurrentTestName() << "......................." << std::endl;
    std::cout << "RUNTIME:"  <<  diff.count() << " s" << std::endl;
    std::cout << "TRANSFER_RATE:"  <<  ((MAX_BUFFER*NUM_ITERATIONS*sizeof(ap_uint<64>))/diff.count()/(1024*1024)) << " MB/s" << std::endl;

}

#endif
