const toggleButton = () => {

  const focus_num = document.querySelector("#focos");
  if (focus_num) {
    const eliminado = document.querySelector("#eliminado");
    focus_num.addEventListener('keyup', (event) => {
      if (focus_num.value != 0) {
        eliminado.disabled = false;
      } else {
        eliminado.disabled = true;
      }
    });
  }
}

export { toggleButton };