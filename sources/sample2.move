address net2dev_addr {
    module one {
        friend net2dev_addr::two;

        public(friend) fun get_val() : u64 {
            return 100
        }
    }

    module two {
        
        // #[test_only]
        use std::debug::print;

        // #[test]
        fun test_call_get_vall(){
            let res = net2dev_addr::one::get_val();
            print(&res);
        }


    }
    module three {
        // if not commented it'll throw err, as module Three is not included in friend list of module One

        
        // use std::debug::print;
        
        // #[test]
        // fun test_call_get_vall(){
        //     let res = net2dev_addr::one::get_val();
        //     print(&res);
        // }

    }
}