import numpy

def get_cypher(cypher_file):
    """
    :rtype: arr[str]
    """
    with open(cypher_file, "r") as fd:
        lines = fd.readlines()
        lines.sort()
        for i in lines:
            if int(i[0]) == 1:
                str = i[2:].strip()
                print(i[2:])
            if int(i[0]) == 3:
                str += " " + i[2:].strip()
                print(i[2:])
            if int(i[0]) == 6:
                str += " " + i[2:].strip()
                print(i[2:])
        print(str)
    return lines

def get_key(key_file):
    """
    :return:
    """
    with open(key_file, "r") as fd:
        keys = fd.readlines()
        for i in range(0, len(keys)):
            k = keys[i].strip().split(" ")
            print(k)
            print(k[-1])
    return k

def decode(message_file):
    message_file = "cypher.txt"
    cypher = get_cypher(message_file)
    # print(cypher)

    keyfile = get_key("key.txt")
    # print(keyfile)

    # for i in keyfile:

decode("cypher.txt")
