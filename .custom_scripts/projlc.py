import os
import sys


def count_lines_and_non_whitespace(project_path):
    total_lines = 0
    total_non_whitespace = 0

    for root, dirs, files in os.walk(project_path):
        # Ignore node_modules and .git directories
        if 'node_modules' in dirs:
            dirs.remove('node_modules')
        if '.git' in dirs:
            dirs.remove('.git')

        for file in files:
            # Ignore non-JavaScript files
            if file.endswith('.ts') or file.endswith('.tsx'):
                filepath = os.path.join(root, file)
                with open(filepath, 'r') as f:
                    lines = f.readlines()
                    total_lines += len(lines)
                    for line in lines:
                        total_non_whitespace += len(line.strip())

    return total_lines, total_non_whitespace


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python main.py <project_dir>")
    else:
        project_path = sys.argv[1]
        lines_count, non_whitespace_count = count_lines_and_non_whitespace(project_path)
        print(f"Total lines of code in the React project: {lines_count}")
        print(f"Total non-whitespace characters in the React project: {non_whitespace_count}")
