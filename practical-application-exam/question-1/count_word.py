"""Module to count word frequencies in a text file and find the most frequent words."""

import re
import sys

def main(filepath):
    """Read a text file and return the most frequent words along with their count."""
    f = open(filepath, "r", encoding="utf-8")
    count_dict = {}
    max_count = 0
    max_words = []
    for i in f.read().split():
        i = re.sub(r'[^a-z]', '', i.lower())
        count_dict[i] = count_dict.get(i, 0) + 1

    for word, count in count_dict.items():
        if count >= max_count:
            max_count = count
            max_words.append(word)
    for _, word in enumerate(max_words):
        print(f"{max_count} {word}")

if __name__ == "__main__":
    input_filepath = sys.argv[1]
    main(input_filepath)
