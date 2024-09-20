
inp_str = input("Enter a string\n")
if inp_str.lower()[0] in ['a', 'e', 'i', 'o', 'u']:
    print(f'{inp_str} starts with a vowel')
else:
    print(f'{inp_str} does not starts with a vowel')
