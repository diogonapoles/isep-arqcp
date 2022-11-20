int rotate_right( int x ,int num_bits)
{   
	/* In x>>num_bits, last "num_bits" bits are 0.
	 To put first 3 bits of x at first, 
	 do bitwise "OR" of x>>num_bits with x << (32 - num_bits) */
	
    return (x >> num_bits)|(x << (32 - num_bits)); 
    
}
