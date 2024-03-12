from lib import *

def main():
    inputs = read_inputs()
    print(inputs)
    template = load_template(inputs)
    template_vars = load_variables(inputs)
    process_templates(inputs, template, template_vars)

if __name__ == "__main__":
    main()