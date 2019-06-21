<script>
  import { onMount } from "svelte";

  let isOpen = false;

  onMount(() => {
    document.addEventListener("mousedown", function(e) {
      if (e.target.closest(".popover_wrapper") === null) {
        isOpen = false;
      }
    });
  });

  let showPopover = () => {
    isOpen = !isOpen;
  };
</script>

<style>
  a {
    text-decoration: none;
  }
  .popover_wrapper {
    position: relative;
    margin-top: 1.5rem;
    display: inline-block;
  }
  .popover_content {
    opacity: 0;
    visibility: hidden;
    position: absolute;
    left: -150px;
    transform: translate(0, 10px);
    width: auto;
    background-color: #fff;
    border-radius: 16px;
    box-shadow: 0px 16px 48px rgba(0, 0, 0, 0.08),
      0px 4px 16px rgba(0, 0, 0, 0.06);
  }
  .popover_wrapper .popover_content {
    background-color: #fff;
    z-index: 10;
    opacity: 1;
    visibility: visible;
    transform: translate(0, 10px);
    transition: all 0.5s cubic-bezier(0.75, -0.02, 0.2, 0.97);
  }
</style>

<div class="popover_wrapper" on:click={showPopover}>
  <slot name="button" />
  {#if isOpen}
    <div class="popover_content">
      <slot name="content" />
    </div>
  {/if}
</div>
