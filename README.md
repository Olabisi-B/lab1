# Lab 1: Hello World in Python

## Objective
In this lab, you will learn the basics of working with GitHub and running a simple Python program. By the end of the lab, you should be able to:

- Set up an SSH key with GitHub.
- Clone a repository from GitHub.
- Write and run a simple Python program.
- Test your program with a provided Bash script.
- Submit your assignment using Git's `commit` and `push` commands.

## Part 1: Create SSH Key and Set it Up on GitHub

1. **Generating an SSH Key**: 
   Open a terminal and type the following command:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   Follow the on-screen instructions. Press enter to save the key in the default location. 

2. **Add your SSH Key to the ssh-agent**:
   ```bash
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa
   ```

3. **Copy the SSH Key**:
   Use the following command to print your public key:
   ```bash
   cat ~/.ssh/id_rsa.pub
   ```
   Select and copy the output.

4. **Add SSH Key to GitHub**:
   - Go to [GitHub](https://github.com/).
   - In the top right corner, click on your profile picture and go to **Settings**.
   - In the left sidebar, click on **SSH and GPG keys**.
   - Click the **New SSH key** button.
   - Add a descriptive title, paste your key into the key field, and click **Add SSH key**.

## Part 2: Clone the Repo

1. Navigate to the repository on GitHub.
2. Click on the **Code** button and ensure that `SSH` is selected.
3. Copy the provided URL.
4. Open a terminal and navigate to the directory where you want to clone the repository.
5. Run:
   ```bash
   git clone YOUR_COPIED_URL
   ```

## Part 3: Write the Program

1. Navigate to the cloned directory:
   ```bash
   cd NAME_OF_YOUR_REPO
   ```

2. Create a new file named `hello.py` using a text editor of your choice.

3. Write the following Python code inside `hello.py`:
   ```python
   print("Hello, World!")
   ```

4. Save and close the file.

## Part 4: Test the Program

1. Run your program with the following command:
   ```bash
   python3 hello.py
   ```

   Check that the output is as expected.

2. Ensure the Bash script (provided by your instructor) is in the same directory as your `hello.py` file.
   
3. Run the script to test your program:
   ```bash
   ./test.sh
   ```

4. Ensure that your program passes the test.

## Part 5: Submit the Assignment

1. Stage your Python file for commit:
   ```bash
   git add hello.py
   ```

2. Commit your changes:
   ```bash
   git commit -m "Completed Hello World program"
   ```

3. Push your changes to GitHub:
   ```bash
   git push origin main
   ```

4. Ensure that your changes are reflected on the GitHub repository webpage.

---

**Note**: Always remember to replace placeholders (like `YOUR_COPIED_URL`, `NAME_OF_YOUR_REPO`, `NAME_OF_THE_SCRIPT.sh`) with appropriate values for your lab setup.
