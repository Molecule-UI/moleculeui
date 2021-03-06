echo "Creating Component"

# Ask the user for the name of Component 
echo "Add Component Name"
read COMPONENT




# Create a Folder inside src with the User Input
mkdir  "./packages/molecule-ui-react/src/"$COMPONENT""

# Create a Sub-Folder of Style inside the newely created folder
mkdir  "./packages/molecule-ui-react/src/"$COMPONENT"/Style"


# Write BoilerPlate code in Styles File
echo "import { createUseStyles } from \"react-jss\";\n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/Style/"$COMPONENT"Styles.tsx"
echo "const styles = createUseStyles({});\n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/Style/"$COMPONENT"Styles.tsx"
echo "export default styles;\n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/Style/"$COMPONENT"Styles.tsx"

# Write BoilerPlate Code in Component File
echo "import React, {CSSProperties} from \"react\";" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"
echo "import cx from \"classnames\";" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"
echo "import Styles from \"./Style/"$COMPONENT"Styles\";\n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"
echo "export interface Props {
    className?: string;
    style?:CSSProperties;
} \n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"
echo "const "$COMPONENT": React.FC<Props> = (props) => {
    const {
        className, style
    } = props;\n
    const componentStyle = Styles();\n
    const classes = cx(className);\n
    return <div style={style} ></div>
};\n" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"
echo "export default "$COMPONENT";" >> "./packages/molecule-ui-react/src/"$COMPONENT"/"$COMPONENT".tsx"

# Write BoilerPlate Code in Index File
echo "import "$COMPONENT" from \"./"$COMPONENT"\"" >> "./packages/molecule-ui-react/src/"$COMPONENT"/index.tsx"
echo "export default "$COMPONENT"" >> "./packages/molecule-ui-react/src/"$COMPONENT"/index.tsx"

#Write Boilerplate code to stories file
echo "import React from \"react\"; 

import { "$COMPONENT" } from \"../index\";

export default {
    component: "$COMPONENT",
    title: \"Components/"$COMPONENT"\"
};

const Template = (args) => (
    <"$COMPONENT" {...args}>
    </"$COMPONENT">
);
" >> "./packages/molecule-ui-react/src/Stories/"$COMPONENT".stories.js"

# Add Defailt export to index.tsx
echo "export { default as "$COMPONENT" } from \"./"$COMPONENT"/"$COMPONENT"\";" >> './packages/molecule-ui-react/src/index.tsx'
