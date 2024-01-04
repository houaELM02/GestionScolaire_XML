xquery version "3.1";

declare variable $moduleCode as xs:string := "GINF31";

<ModuleInformation>
{
    for $module in //Module[codeModule/@c = $moduleCode]
    return
        <Module>
            <Code>{$module/codeModule/@c}</Code>
            <Designation>{$module/designationModule/text()}</Designation>
            <Matieres>
                {
                    for $matiere in $module/Matieres/Matiere
                    return
                        <Matiere>
                            <Designation>{$matiere/DesignationMatiere/text()}</Designation>
                            <Note>{$matiere/NoteMatiere/text()}</Note>
                        </Matiere>
                }
            </Matieres>
        </Module>
}
</ModuleInformation>
