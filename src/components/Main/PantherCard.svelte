<script>
  export let Icon;
</script>

<style>
  .panther-card-wrapper {
    padding: 0 50px;
    box-sizing: border-box;
  }
  .panther-icon {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  :global(.panther-icon > svg) {
    height: 80px;
  }
</style>

<div class="panther-card-wrapper">
  <div class="panther-icon">
    <Icon />
  </div>
</div>
