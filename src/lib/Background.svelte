<script lang="ts">
</script>

<div class="wrapper">
    <div class="nav-background" />
</div>

<style lang="scss">
    @use "sass:math";
    @import "../style/colors.scss";

    .wrapper {
        position: absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        overflow: hidden;
    }

    .nav-background {
        height: 100%;
        width: 400vw;
        z-index: 0;
        background: linear-gradient(
            to right,
            $color-primary,
            $color-secondary,
            $color-tertiary,
            $color-secondary,
            $color-primary,
            $color-secondary,
            $color-tertiary,
            $color-secondary,
            $color-primary
        );
        filter: brightness(120%);

        animation: scroll-right linear 10s infinite;
    }

    @keyframes scroll-right {
        from {
            transform: translateX(-50%);
        }

        to {
            transform: translateX(0%);
        }
    }
</style>