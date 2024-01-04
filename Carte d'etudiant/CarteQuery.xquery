declare namespace ns="http://CarteEtudiant.org";

let $codeApogeToFind := "20000742" 
let $etudiant := //ns:Etudiant[ns:codeApoge = $codeApogeToFind]

return
  <Result>
    {$etudiant}
  </Result>
