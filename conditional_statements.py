

input = {'All' : [1, 2, 3], 'is' : [1, 4], 'well' : [4, 2]}


output_dict = {}

for k, v in input.items():
    print(k, v)
    for i in v :
        print(i)
        if i in output_dict.keys() :
            print(i, 'I am here')
            output_dict[i].append(k)
            print(output_dict)
        else:
            print(i, 'I am in the else block')
            output_dict[i] = [k]
            print(output_dict)
        print('End of loop******')

print(output_dict)

output = {1: ['All', 'is'], 2: ['All', 'well'], 3: ['All'], 4: ['is', 'well']}
