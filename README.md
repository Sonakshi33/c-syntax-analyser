# c-syntax-analyser
## ✨ C Syntax Analyser

This project implements a syntax analyser for C programs. It demonstrates the compiler front-end process, focusing on lexical and syntax analysis.

---
## 🧠 Concepts Covered

**a. Two Phases of Compilation:**

- Lexical Analysis: Produces streams of tokens from the source code.

- Syntax Analysis: Validates the tokens (e.g., checking if int main() is valid).

**b. Tools Used:**

- Lex, C, Parser Generator (Yacc/Bison)

**c. Understanding:**

- How source code is processed and validated before execution.

**d. Parsing Techniques:**

- LL(1), LR(1)

**e. Implementation:**

- Built using parser generator Yacc (or Bison).

**f. Grammar and Tokens:**

- Define token types and grammar rules to check syntax.

**g. Lexical Analysis:**

- Tokenizes source code into meaningful units.

**h. Flow of Execution:**

- C Code → Lexical Analyser → Token Stream → Syntax Analysis →
→ Parse Tree (if valid) / Error Message (if invalid)

---

## ⚙️ Installed Tools

- Lex

- Yacc/Bison

- GCC Compiler

---

## Linux Environment 
- (e.g., WSL or Ubuntu)

---
## 📂 How to Run

Write your Lex (.l) and Yacc (.y) files.

Compile using:
lex file.l
yacc -d file.y
gcc lex.yy.c y.tab.c -o analyser
./analyser
Input your C code and see the parsing output.
