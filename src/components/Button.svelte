<script>
  export let onClick;
  export let contained;
  export let children;
</script>

<style>
  .button-base-root {
    color: inherit;
    border: 0;
    cursor: pointer;
    margin: 0;
    display: inline-flex;
    outline: none;
    padding: 0;
    position: relative;
    align-items: center;
    user-select: none;
    border-radius: 0;
    vertical-align: middle;
    -moz-appearance: none;
    justify-content: center;
    text-decoration: none;
    background-color: transparent;
    -webkit-appearance: none;
    -webkit-tap-highlight-color: transparent;
  }
  .button-root {
    color: rgba(0, 0, 0, 0.87);
    padding: 6px 16px;
    font-size: 0.875rem;
    min-width: 64px;
    box-sizing: border-box;
    transition: background-color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,
    box-shadow 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,
    border 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    font-family: "Roboto", "Helvetica", "Arial", sans-serif;
    font-weight: 500;
    line-height: 1.75;
    border-radius: 4px;
    letter-spacing: 0.02857em;
  }
  .button-container {
    margin: 8px;
    color: #111;
  }
  .button-container:hover {
    color: #2196f3;
    background-color: rgba(33, 150, 243, 0.08);
    text-decoration: none;
  }
  .button-label {
    width: 100%;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
  }
  .contained {
    background-color: #0056D6;
    color: #fff;
    box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.2),
    0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 3px 1px -2px rgba(0, 0, 0, 0.12);
    border-radius: 90px;
  }
  .contained:hover {
    background-color: #0989E3;
    text-decoration: none;
    color: #fff;
  }
</style>

<button
  class="contained button-base-root button-root button-container"
  on:click={onClick}>
  <span class="button-label">
    <slot {children} />
  </span>
</button>
