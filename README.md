# R for Data Analysis
---
---
This is a repository for the `R for Data Analysis` course that I learned at [Codecademy](https://codecademy.com).

### List of useful RSudio Keyboard Shortcuts

- **Ctrl + Enter**: Run current line/selection. This command is used to execute the current line or the selected lines in your script.
- **Ctrl + Shift + Enter**: Run all. This command is used to execute all lines in your script.
- **Ctrl + Shift + F10**: Restart R session. This command is used to restart your current R session.
- **Ctrl + 1**: Switch to the Source pane. This command is used to switch your focus to the Source pane.
- **Ctrl + 2**: Switch to the Console pane. This command is used to switch your focus to the Console pane.
- **Ctrl + Shift + 1**: Switch focus to the Source pane. This command is used to switch your focus to the Source pane.
- **Ctrl + Shift + 2**: Switch focus to the Console pane. This command is used to switch your focus to the Console pane.
- **Ctrl + Shift + M**: Insert the pipe operator %>% . This command is used to insert the pipe operator %>% at your cursor's location.
- **Alt + -**: Insert the assignment operator <- . This command is used to insert the assignment operator <- at your cursor's location.
- **Ctrl + Shift + C**: Comment/uncomment lines. This command is used to comment or uncomment the current line or selected lines in your script.
- **Ctrl + Shift + Up/Down**: Jump to previous/next function. This command is used to navigate to the previous or next function in your script.
- **Ctrl + Shift + N**: New script. This command is used to create a new script.
- **Ctrl + S**: Save script. This command is used to save the current script.
- **Ctrl + Shift + S**: Save all open scripts. This command is used to save all open scripts.
- **Ctrl + F**: Find and replace. This command is used to find and replace text in your script.
- **Ctrl + Shift + F**: Find in files. This command is used to find text in all files in your project.
- **F1**: Help on current function. This command is used to open the help page for the function under your cursor.


## Manage Package Dependencies in R Markdown

The best practice to manage package dependencies in an R Markdown file for a data analysis project is to use a dedicated package management tool like `renv` or `packrat`. These tools create a private R library associated with your project, which makes it easy to reproduce your environment.

Here's a simple guide on how to use `renv`:

1. Install `renv`:

```r
install.packages("renv")
```

2. Initialize `renv` in your project directory:

```r
renv::init()
```

This will create a `renv.lock` file in your project directory. This file is a snapshot of your project's R library, including the version of R and all packages.

3. Whenever you install or remove packages, use `renv::snapshot()` to update the `renv.lock` file:

```r
install.packages("dplyr")
renv::snapshot()
```

4. To restore your project's R library from the `renv.lock` file (for example, when someone else wants to run your project), use `renv::restore()`:

```r
renv::restore()
```

This will install the correct versions of all packages listed in the `renv.lock` file.

Remember to include the `renv.lock` file when you share your project, so others can reproduce your environment.

For a standalone R Markdown file, you can also list your dependencies in a setup chunk at the top of the document:

```
```{r setup, include=FALSE}
install.packages(c("dplyr", "ggplot2"))
```
```

This will ensure that the required packages are installed when the R Markdown file is run. However, this won't guarantee that the correct versions of the packages are installed, so it's less reliable for reproducing your environment exactly.