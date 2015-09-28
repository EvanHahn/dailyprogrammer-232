#!/usr/bin/env python
from sys import argv

if __name__ == '__main__':
    input_file = open(argv[1], 'r')
    output_file = open('inputs.wren', 'w')

    output_file.write('var coordinates = [\n')

    next(input_file)  # skip first line
    for input_line in input_file:
        output_line = ('[' + input_line.strip()[1:-1] + '],\n')
        output_file.write(output_line)

    output_file.write(']')
