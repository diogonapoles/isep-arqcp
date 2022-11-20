void add_byte(char x,int *vec1,int *vec2)
{
	int i, count=*vec1;
		
	*vec2=*vec1; 	 //pass value with the size of vec1 store in the first elemento of vec1 ,to the first element of vec2
	vec1++;
	vec2++;	
	
	for(i=0;i<count;i++)
	{
		*vec2=*vec1;   				//pass value from vec1 to vec2
		char *ptr= (char*) vec2;  	//create a char pointer(1 byte), with the adress pointed by vec2
			
		*ptr = x + *ptr;            //add to the pointed char the value x			
		vec1++;						//next element
		vec2++;						//next element
	}
	
}
