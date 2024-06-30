<script lang="ts">
</script>

<main>
  <div class="introduction">
    <h1 class="header">Hello, I'm Arvid ➡ <img alt="Arvid" class="my-face" src="king_full.png"/></h1>
    <p>My site is currently under construction :( but you are welcome back later :)</p>
  </div>
</main> 

<style lang="scss">
  @import 'src/style/colors';

  .introduction {
    text-align: center;
  }

  .header {
    text-wrap: nowrap;
    text-shadow: 0 0 0.75rem rgba(255, 255, 255, 0.784);
    margin-bottom: 2rem;
  }

  img.my-face {
    vertical-align: middle;
    height: 12rem;
    border: 5px solid $color-primary;
    border-radius: 999rem;
  }

  main {
    width: 100% !important;
    padding: 30px;
    h1 {
      padding: 0px;
      margin: 0px;
      font-size: 6rem;
    }
    p {
      font-size: 1.5rem;
      position: relative;
      z-index: 1;
    }
    color: white;
    background: $color-background;
    font-weight: 400;
    position: relative;
    height: 100%;
    flex-grow: 1;
  }
</style>
