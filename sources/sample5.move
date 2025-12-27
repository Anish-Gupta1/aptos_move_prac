address net2dev_addr {
    module PriceOracle {
        public fun btc_price(): u128 {
            80000
        }
    }

    module CastCheck {
        use net2dev_addr::PriceOracle;


        fun calculate_swap(): u64 {
            let swap_w_fee = (PriceOracle::btc_price() as u64) + 5;
            swap_w_fee
        }

        // #[test_only]
        use std::debug::print;
        
        // #[test]
        fun test_checkcast(){
            let res = calculate_swap();
            print(&res);
        }
    }




}