<script lang="ts">
</script>

<nav>
    <div class="nav-buttons-container">
        <div class="nav-button">
            <p>Projects</p>
        </div>
        <div class="nav-button">
            <p>About</p>
        </div>
        <div class="social-section">
            <p>Twitter</p>
        </div>
    </div>
</nav>

<style lang="scss">
    @use "sass:math";
    @import "../style/colors.scss";
    @import url("https://fonts.googleapis.com/css2?family=League+Spartan:wght@700&display=swap");

    $gap: 4px;
    $nav-height: 8rem;
    $nav-height-hypot: math.hypot($nav-height);
    $transition: all 1.5s cubic-bezier(.08,.68,.53,.99);

    nav {
        // isolation: isolate;
        position: relative;
        height: $nav-height;
        width: 100vw;
        font-family: "League Spartan", sans-serif;
        text-transform: uppercase;
        background-color: white;
        mix-blend-mode: multiply; // The magic
    }

    .nav-buttons-container {
        height: 100%;
        display: flex;
        position: relative;
        gap: $gap;
        padding: $gap;
        height: calc((100% - $gap * 2) - ($gap/20));
        background: transparent;
    }

    @function diagonal-gradient($invert: false) {
        $anti-alias-amount: 0%;
        $start-color: if($invert==true, black, white);
        $end-color: if($invert==true, white, black);

        @return linear-gradient(
            135deg,
            $start-color 0%,
            $start-color 50% - $anti-alias-amount,
            $end-color 50% + $anti-alias-amount,
            $end-color 100%
        );
    }

    .nav-button {
        color: white;
        background: diagonal-gradient();
        background-size: calc(200% + $nav-height-hypot) 100%;
        background-position-x: calc(100% + 1px);
        cursor: pointer;
        transition: $transition;
        border: 2px solid black;

        p {
            user-select: none;
            position: relative;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100%;
            font-size: 2rem;

            background: diagonal-gradient(true);
            background-size: calc(200% + $nav-height-hypot) 100%;
            background-position-x: calc(100% + 1px);

            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            transition: $transition;
        }

        &:nth-child(1),
        &:nth-child(2) {
            width: 25%;
        }

        &:hover {
            background-position-x: 0%;
            p {
                background-position-x: 0%;
            }
        }
    }

</style>
