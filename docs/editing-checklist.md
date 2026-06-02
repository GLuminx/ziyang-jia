# Site editing checklist

Use this workflow when updating the site (same structure as the template Guide page).

## Where to edit

| Goal | File or folder |
|------|----------------|
| Site title, URL path, sidebar bio | `_config.yml` |
| Top menu links | `_data/navigation.yml` |
| CV page text | `_pages/cv.md` |
| Each publication (Publications page) | `_publications/*.md` |
| Each teaching entry (Teaching page) | `_teaching/*.md` |
| Homepage | `_pages/about.md` |

## After editing

```powershell
cd $HOME\Projects\My-Academic-pages
git add .
git commit -m "Describe your change"
git push
```

Wait a few minutes, then hard-refresh: `Ctrl+F5`

Live site: https://gluminx.github.io/ziyang-jia/

## Publications

- One file per paper in `_publications/`
- Set `paperurl` to the DOI link
- Put the full citation in `citation` (HTML allowed for links)
- Remove old template files so they do not appear on the site

## Teaching

- One file per course or role in `_teaching/`
- Set `title`, `type`, `venue`, `date`, and optional body text
- Keep `_pages/cv.md` in sync for the CV page summary

## Navigation

- Remove a menu item: delete or comment out its block in `_data/navigation.yml`
- The Guide page stays at `/markdown/` for reference but is not linked in the menu
