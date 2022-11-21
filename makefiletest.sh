https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
#!/bin/bash

remove_compiled () {
    rm -f autograder*
    rm -f lc4
    rm -f *.o
}

ERR='\033[1;31m'
NC='\033[0m' # No Color

cd submit

required_files=( "lc4.c" "lc4_disassembler.c" "lc4_disassembler.h" \
                 "lc4_loader.c" "lc4_loader.h" "lc4_memory.c" "lc4_memory.h" "Makefile")

for file in "${required_files[@]}"
do
    if [ ! -f $file ]; then
        echo -e "${ERR}Required file ${file} does not exist!${NC}"
        exit 1
    fi
done

if [ $1 == "lc4" ]; then
    make lc4

    if [ $? -ne 0 ]; then
        echo -e "${ERR}LC4 Makefile failed!${NC}"
        remove_compiled
        exit
    fi

    echo -e "${NC}LC4 Makefile successful!${NC}"
    remove_compiled
elif [ $1 == "integration" ]; then
    cp ../autograder_test/* .
    make lc4
    
		echo -e "${NC}running lc4 on testone.obj and comparing results with correct solution${NC}"

    cp ../obj*/testone.* .
    ./lc4 testone.obj
    
    if [ $? -ne 0 ]; then
        echo -e "${ERR}lc4 failed!${NC}"
        remove_compiled
        exit
    fi
    
    cat testone.sol
    
    make -f autograder_makefile autograder

    if [ $? -ne 0 ]; then
        echo -e "${ERR}Compilation failed!${NC}"
        remove_compiled
        exit
    fi
    
    ./autograder reverse_assemble 999
    if [ $? -ne 0 ]; then
        echo -e "${NC}Compilation passed, but ${ERR}reverse assembler unit test failed!${NC}"
        remove_compiled
        exit
    fi
    
    ./autograder search_opcode 998
    if [ $? -ne 0 ]; then
        echo -e "${NC}Compilation passed, but ${ERR}search opcode unit test failed!${NC}"
        remove_compiled
        exit
    fi
    
    ./autograder add_to_list 999
    if [ $? -ne 0 ]; then
        echo -e "${NC}Compilation passed, but ${ERR}add to list unit test failed!${NC}"
        remove_compiled
        exit
    fi
    

    echo -e "${NC}Successfully compiled, sample unit tests passed!${NC}"
		echo -e "${NC}This is only a subset of the full tests. Remember to test your lc4 program with the sample .obj files${NC}"
    remove_compiled
else
    echo -e "${ERR}Invalid or missing argument!${NC}"
    echo "Usage:"
    echo "    ./makefiletest.sh <lc4|integration>"
    exit 1
fi
