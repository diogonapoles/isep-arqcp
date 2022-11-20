int greater_date(unsigned int date1, unsigned int date2)
{
	unsigned char day,month,day2,month2;
	unsigned short year,year2;
	
	month= (date1) & 0xff;
	month2=(date2) & 0xff;
	year=(date1>>(8)) & 0xffff;
	year2=(date2>>(8)) & 0xffff;
	day= (date1 >> (8*3)) & 0xff;
	day2 =(date2 >> (8*3)) & 0xff;
	
	if(year<year2){
		return date2;
	}
	else if(year2<year){
		return date1;
	}
	
	if(month<month2){
		return date2;		
	}
	else if(month2<month){
		return date1;
	}
	
	if(day<day2){
		return date2;		
	}
	else if(day2<day){
		return date1;
	}
	
	if(day==day2 && month==month2 && year==year2){
		return date1;
	}
	
	return 0;
	
}
