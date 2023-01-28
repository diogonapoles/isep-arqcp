.section .data
	.global code
	.global currentSalary
	#.equ manager,20
	#.equ engineer,21
	#.equ technician,22
	#.equ managerSalary,400
	#.equ engineerSalary,300
	#.equ technicianSalary,200
	#.equ otherSalary,150
	
.section .text 
	.global new_salary


new_salary:

	movw code(%rip), %ax 		#code
	movw $20, %cx				#manager code
	movw $22, %dx				#technician code
	cmpw %cx, %ax			
	jl otherCode				#se code < manager code
	je managerSalaryRaise		#se code == manager code
	cmpw %dx, %ax				
	jg otherCode				#se code > technician code
	je technicianSalaryRaise	#se code == technician code
	
	movw $300, %ax				#engineer Salary raise
	jmp calculateSalary
	
	
	managerSalaryRaise:
		movw $400, %ax			#manager Salary raise
		jmp calculateSalary
		
	technicianSalaryRaise:
		movw $200, %ax			#technician Salary raise
		jmp calculateSalary
	
	otherCode:
		movw $150, %ax 			#other Salary raise
	
	
	calculateSalary:
		addw currentSalary(%rip), %ax	#sum current salary with raise
	
	end:
		movswq %ax, %rax
		ret 


