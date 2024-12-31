# IAIK Master's Thesis Template

Install with:

```sh
git clone https://github.com/ecomaikgolf/typst-iaik-master-thesis-template ~/.local/share/typst/packages/local/iaik-master-thesis-template/
```

Start new thesis with the template:

```sh
typst init @local/iaik-master-thesis-template:1.0.0 thesis
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
