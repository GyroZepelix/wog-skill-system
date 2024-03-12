import json
import argparse
import os

def read_inputs():
    """Read inputs from the command line."""
    parser = argparse.ArgumentParser(description='Process some templates.')
    parser = argparse.ArgumentParser(description='Process some templates.')
    parser.add_argument('--template', help='Path to the template file', required=True)
    parser.add_argument('--variables', help='Path to the variables JSON file', required=True)
    parser.add_argument('--output', help='Output directory', default='../target')
    parser.add_argument('--output_name', help='Name of the output JSON file', default='output.json')
    parser.add_argument('--recursive', help='Number of times the templates gets the variables processed', default=1, type=int)
    args = parser.parse_args()
    return args

def load_template(args):
    """Load the template from a file."""
    with open(args.template, 'r') as file:
        template = file.read()
    return template

def load_variables(args):
    """Load variables from a JSON file."""
    with open(args.variables, 'r') as file:
        variables = json.load(file)
    return variables

def process_templates(args, template, template_vars):
    """Process the template with the given variables and save to subfolders."""
    for key, variables in template_vars.items():
        processed_template = template
        for i in range(args.recursive):
            for var_key, var_value in variables.items():
                processed_template = processed_template.replace(f"%{var_key}%", str(var_value))
        
        # Create subfolder for each key
        output_path = os.path.join(args.output, key)
        os.makedirs(output_path, exist_ok=True)
        
        # Save processed template in the subfolder
        with open(os.path.join(output_path, args.output_name), 'w') as file:
            file.write(processed_template)