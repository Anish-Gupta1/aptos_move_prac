module net2dev_addr::Sample4 {

    use std::debug::print;
    use std::string::{String,utf8};

    fun use_abort(msg: String){
        if(msg == utf8(b"hello")){
            print(&utf8(b"Hi !"));
        }else{
            abort 101
        }
    }

    fun use_assert(msg:String){
        assert!(msg == utf8(b"hello"),101);
        print(&utf8(b"Hi !"));
    }




    // #[test]
    fun test_pass_use_abort(){
        use_abort(utf8(b"hello"));
        
    }
    // #[test]
    fun test_pass_use_assert(){
        use_abort(utf8(b"hello"));
        
    }

    // uses expect failure to expect the test fail which ultimately passes the test
    // #[test]
    // #[expected_failure]
    fun test_fail_use_abort(){
        use_abort(utf8(b"hmm"));
        
    }
    #[test]
    #[expected_failure]
    fun test_fail_use_assert(){
        use_abort(utf8(b"hmm"));
        
    }
}