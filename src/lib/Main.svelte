<script lang="ts">
</script>

<!-- <main>
  <h1>Hello, I'm Arvid</h1>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum rem est odio quo eveniet sapiente enim iure magnam, alias sint vero eos quas, autem quibusdam voluptate asperiores officiis labore cum.</p>
</main> -->

<style lang="scss">
  @use 'src/style/colors';
  main {
    padding: 30px;
    h1 {
      padding: 0px;
      margin: 0px;
      font-size: 4rem;
    }
    mix-blend-mode: multiply;
    p {
      font-size: 1.5rem;
      position: relative;
      z-index: 1;
    }
    color: white;
    border: 2px solid black;
    background: black;
    // backdrop-filter: brightness(150%);

    font-weight: 700;
    // mix-blend-mode: color-burn;
    position: relative;
    height: 100%;
    flex-grow: 1;
  }
</style>
