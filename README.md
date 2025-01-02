# ISEC Master's Thesis Template

Install with:

```sh
git clone https://github.com/ecomaikgolf/typst-isec-master-thesis-template ~/.local/share/typst/packages/local/isec-master-thesis-template/
```

Start new thesis with the template:

```sh
typst init @local/isec-master-thesis-template:1.0.0 thesis
cd thesis
```

## Quick usage

Start incremental compilations with:

```sh
typst watch thesis.typ
```

then open the generated PDF:

```sh
xdg-open thesis.typ
```

Now edit `thesis.typ` and it will be incrementally built in each save.

Incremental builds are blazingly fast, but regular PDF rendering is a
bottleneck here. Use tinymist `:TypstPreview` which uses the browser to do
partial renderings and previews are even more responsive.

## Design

Template closely follows [Maria's LaTeX
Template](https://extgit.iaik.tugraz.at/castle/student/templates/master-thesis/-/tree/main/thesis)
design from the institute.

There's a few differences between the original and the Typst version that won't
be changed as I prefer as it is here. Nothing reallty important changes, just
small typesetting choices. Check the differences
[here](https://github.com/ecomaikgolf/typst-iaik-master-thesis-template/issues?q=is%3Aissue+is%3Aopen+label%3Adiff)

## Samples

![image](https://github.com/user-attachments/assets/62d3eff1-93db-42c7-ae24-8562eea2948e)
![image](https://github.com/user-attachments/assets/b02843dc-507b-4108-9f9f-00a4be13b92e)
![image](https://github.com/user-attachments/assets/8ab9dde7-678b-4b59-8a2c-14dc5b0305e2)
![image](https://github.com/user-attachments/assets/ca700eb5-3c88-4fef-a62f-c2c6cb81a6a5)
![image](https://github.com/user-attachments/assets/726115da-81f2-4100-ac3b-014044ba3250)
![image](https://github.com/user-attachments/assets/25db8ec5-05a5-43b5-b649-0bbe0eca4459)
![image](https://github.com/user-attachments/assets/9d63d990-9c36-4277-a495-95ad5d4767d3)
![image](https://github.com/user-attachments/assets/f4f3173b-ab1b-4291-92b0-0c1ac9427de6)
