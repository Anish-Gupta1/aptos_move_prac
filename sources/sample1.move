module net2dev_addr::Sample1{

    use std::debug::print;
    use std::string::{String,utf8};

    const Caps: u32 = 100;

    fun set_val(): u32 {

        let val:u64 = 1095;
        let string_val: String = utf8(b"hello aptos");
        let string_byte: vector<u8> = b" this is using vector";
        
        print(&val);
        print(&string_val);
        // print(&string_byte);
        print(&utf8(string_byte));

        Caps
    }

    // #[test]
    fun test_set_val(){
        let res : u32 = set_val();
        print(&res);
    }
}