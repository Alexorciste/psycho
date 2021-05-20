const openNav = () => {
   
   const leftPannel = document.querySelectorAll(".specialist-pannel")
   const cardOfDead = document.querySelectorAll(".avatar-specialist")
   
  
    cardOfDead.forEach((specialist) => {
        
        const testId = document.getElementById(`${specialist.id}`)
        if (testId) {

        testId.addEventListener("click", (event) => {
          
          const testPannel = document.getElementById(`spe${specialist.id}`)
          testPannel.classList.toggle("active");
          
          if((specialist.id)%2 == 0) {
             
            testPannel.style.right ="0"
         } else {
            testPannel.style.left="0"
         }
         
       });

      }
    })
    
  
};

  export { openNav };