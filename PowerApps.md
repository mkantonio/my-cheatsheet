# Cheatsheets Power Apps

## Check Form if Edit or New
```bash
If(
    EditForm1.Mode=0;
    "Mode:0 Edit";
    "Mode:1 New"
)
```
```
FormMode.Edit  0
FormMode.New  1
FormMode.View  2

```
