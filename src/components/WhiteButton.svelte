<script>
  export let onClick;
  export let children;
</script>

<style>
  .white-button-container {
    padding-top: 20px;
    padding-bottom: 30px;
    display: flex;
    justify-content: center;
    position: relative;
  }
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
    justify-content: center;
    text-decoration: none;
    background-color: #fff;
  }
  .button-root {
    color: rgba(0, 0, 0, 0.87);
    padding: 14px 25px;
    box-sizing: border-box;
    transition: background-color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,
      box-shadow 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms,
      border 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
    border-radius: 90px;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.12),
      0px 4px 16px rgba(0, 0, 0, 0.05);
  }
  .button-container {
    color: #0056d6;
    z-index: 2;
  }
  .button-container:hover {
    background-color: #efefef;
    text-decoration: none;
  }
  .button-label {
    width: 100%;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
  }
  .styled-line {
    border-top: 1px solid #ebedf0;
    position: absolute;
    z-index: 1;
    top: 48px;
    width: 100%;
  }
</style>

<div class="white-button-container">
  <div class="styled-line" />
  <button
    class="button-base-root button-root button-container"
    on:click={onClick}>
    <span class="button-label">
      <slot {children} />
    </span>
  </button>
</div>
