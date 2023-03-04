<script lang="ts">
  import Navbar from "./lib/Navbar.svelte";
</script>

<main>
    <Navbar />
</main>

<style lang="scss">
  @use "sass:math";
  @import "style/colors.scss";

  main {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(
      to right,
      $color-primary,
      $color-secondary,
      $color-tertiary,
      $color-primary,
      $color-secondary,
      $color-tertiary,
      $color-primary
    );
    background-size: 800% 100%;
    
    animation: scroll-background-right linear 80s infinite;
  }

  @keyframes scroll-background-right {
    from {
      background-position-x: 400%;
    }

    to {
      background-position-x: 0%;
    }
  }
</style>
