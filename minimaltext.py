# Author: Matthew McGilvery
# Date: June 28, 2023
# Subject: Minimal Text Processor in Python

def remove_extra_spaces(text):
    """
    Removes extra spaces from the given text.
    """
    processed_text = ' '.join(text.split())
    return processed_text

def remove_symbols(text):
    """
    Removes symbols from the given text.
    """
    processed_text = ''.join(char for char in text if char.isalnum() or char.isspace())
    return processed_text

def remove_new_line(text):
    """
    Removes new lines from the given text.
    """
    processed_text = text.replace('\n', ' ')
    return processed_text

def remove_digits(text):
    """
    Removes digits from the given text.
    """
    processed_text = ''.join(char for char in text if not char.isdigit())
    return processed_text

def to_uppercase(text):
    """
    Converts the given text to uppercase.
    """
    return text.upper()

def to_lowercase(text):
    """
    Converts the given text to lowercase.
    """
    return text.lower()

def to_sentence_case(text):
    """
    Converts the given text to sentence case.
    """
    return text.capitalize()

def process_text(text, function_name):
    """
    Processes the given text based on the selected function.
    """
    if function_name == "remove_extra_spaces":
        processed_text = remove_extra_spaces(text)
    elif function_name == "remove_symbols":
        processed_text = remove_symbols(text)
    elif function_name == "remove_new_line":
        processed_text = remove_new_line(text)
    elif function_name == "remove_digits":
        processed_text = remove_digits(text)
    elif function_name == "to_uppercase":
        processed_text = to_uppercase(text)
    elif function_name == "to_lowercase":
        processed_text = to_lowercase(text)
    elif function_name == "to_sentence_case":
        processed_text = to_sentence_case(text)
    else:
        processed_text = text
    
    return processed_text

# Example usage
input_text = input("Enter text: ")
selected_function = input("Enter function name (remove_extra_spaces, remove_symbols, remove_new_line, remove_digits, to_uppercase, to_lowercase, to_sentence_case): ")

processed_text = process_text(input_text, selected_function)
print("Processed text:", processed_text)

