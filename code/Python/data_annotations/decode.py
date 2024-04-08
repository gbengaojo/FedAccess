def get_cypher(cypher_file):
    """
    :param: (string) path to cyphertext
    :return: Sorted list from cyphertext
    """
    with open(cypher_file, "r") as fd:
        lines = fd.readlines()
        lines.sort()

    return lines

def get_key(key_file):
    """
    :param: (string) path to keyfile
    :return: List of last integer of each line in keyfile
    """
    with open(key_file, "r") as fd:
        keys = fd.readlines()
        k = []
        cypher_key = []
        for i in range(0, len(keys)):
            k += keys[i].strip().split(" ")
            cypher_key += (k[-1])
    return cypher_key

def decode(message_file):
    """
    :param (string) message_file:
    :return: (string) plaintext - decoded cyphertext
    """
    keyfile = get_key("key.txt")
    key = ""
    counter = 0
    for k in keyfile:
        key += k[-1]

    message_file = "cypher.txt"
    str = ""
    lines = get_cypher(message_file)
    for i in lines:
        if i[0] == keyfile[counter]:
            str += i[2:].strip() + " "
            if counter < len(keyfile) - 1:
                counter += 1
            continue
        if i[0] == keyfile[counter]:
            str += " " + i[2:].strip() + " "
            if counter < len(keyfile) - 1:
                counter += 1
            continue
        if i[0] == key[counter]:
            str += " " + i[2:].strip() + " "
            if counter < len(keyfile) - 1:
                counter += 1
            continue
    return str.strip()

plaintext = decode("cypher.txt")
print(plaintext)
