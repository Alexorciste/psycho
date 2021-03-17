const openNav = () => {
   
   const show = document.querySelector(".specialists")
    const cardOfDead = document.querySelector(".cardbox");
    
  
  
    cardOfDead.addEventListener("click", (event) => {
      console.log(event)
      show.classList.toggle("active");
  });
  
  };
  
  export { openNav };