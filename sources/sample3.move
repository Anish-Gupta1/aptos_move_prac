module net2dev_addr::Sample3 {
    use std::debug::print;

    fun use_for_loop(c: u64): u64 {
        let res = 0;
        
        for(i in 0..c){
            res += i ;
        };
        res
    }

    fun use_while_loop(c: u64): u64 {
        let res = 0 ;
        let i = 1;
        while (i<=c){
            res+=i;
            i+=1;
        };
        res
    }

    fun use_loop(c: u64): u64 {
        let res = 0;
        let i = 1;
        loop {
            if(i==c){
                break;
            };
            res+=i;
            i+=1;
        };
        res
    }

    // #[test]
    fun test_for_loop(){
        let val = use_for_loop(10);
        print(&val);
    }

    // #[test]
    fun test_while_loop(){
        let val = use_while_loop(10);
        print(&val);
    }

    // #[test]
    fun test_loop(){
        let val = use_loop(10);
        print(&val);
    }
}