# Container Solutions reveal-md template

[![](https://images.microbadger.com/badges/image/containersol/reveal-md.svg)](http://microbadger.com/images/containersol/reveal-md "Get your own image badge on microbadger.com")

Reveal-md theme for [Container Solutions](http://container-solutions.com)

# Running natively

```
npm install -g reveal-md
reveal-md --css resources/cs.css slides.md
```

# Running with Docker

- **Step 1** Build with docker:
   ```
   docker build -t containersol/reveal-md .

   ```

- **Step 2** Run with docker:
   ```
   docker run --rm -ti -p 8000:1948 -v `pwd`/resources:/usr/src/app/slides.md containersol/reveal-md
   ```

---

You can use the the test slides to get an idea for the formatting.

```
docker run -d -p 8000:1948 containersol/reveal-md demo
```

---

If you need to include other files e.g. images, keep them with the presentation file and just mount the directory e.g:

```
docker run -d -p 8000:1948 -v /my/slide/dir:/usr/src/app/ containersol/reveal-md:latest
```

---

To build your own version just clone https://github.com/webpro/reveal-md and modify the Dockerfile as you want

# Viewing the slides

Now go to http://localhost:8000 in your browser.

