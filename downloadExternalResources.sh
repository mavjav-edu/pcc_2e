        # Get URLs from ".\_includes\vendor\external_assets.json"
        # with schema ".\_includes\vendor\external_assets_schema.json"
        externs=$(cat ./_includes/vendor/external_assets.json)
        # Get the URL
        urls=$(echo $extern | jq -r '.[] | .url')
        # Get the filename
        filenames=$(echo $extern | jq -r '.[] | .target_local_filename')
        # Get the type
        local_paths=$(echo $extern | jq -r '.[] | .target_local_path')
        # Get the hash
        hashes=$(echo $extern | jq -r '.[] | .hash')
        # Get the hash type
        hash_algos=$(echo $extern | jq -r '.[] | .hash_algo')

        # Indexed loop through externs
        for i in $(seq 0 $((${#urls[@]} - 1))); do
            # Get the URL
            url=${urls[$i]}
            # Get the filename
            filename=${filenames[$i]}
            # Get the type
            local_path=${local_paths[$i]}
            # Join filename to local_path
            target_local_path=${local_path}/${filename}
            # Get the hash
            hash=${hashes[$i]}
            # Get the hash type
            hash_algo=${hash_algos[$i]}

            # Check if the file exists
            if [ -f "${target_local_path}" ]; then
                # Check if the hash is correct
                if [ "$(shasum -a ${hash_algo} ${target_local_path} | awk '{print $1}')" = "${hash}" ]; then
                    echo "File ${target_local_path} exists and is valid"
                else
                    echo "File ${target_local_path} exists but is invalid"
                    # Download the file
                    curl -L -o ${target_local_path} ${url}
                    # Check if the hash is correct
                    if [ "$(shasum -a ${hash_algo} ${target_local_path} | awk '{print $1}')" = "${hash}" ]; then
                        echo "File ${target_local_path} is valid"
                    else
                        echo "File ${target_local_path} is invalid"
                    fi
                fi 
                 # else, if the url is valid, download the file
            elif curl -Is ${url} | head -n 1 | grep -q "200 OK"; then
                # Download the file
                curl -L -o ${target_local_path} ${url}
                # Check if the hash is correct
                if [ "$(shasum -a ${hash_algo} ${target_local_path} | awk '{print $1}')" = "${hash}" ]; then
                    echo "File ${target_local_path} is valid"
                else
                    echo "File ${target_local_path} is invalid"
                fi
            else
                echo "File ${target_local_path} does not exist"
            fi
        done        
    
        # Liquid markup header:
        # ---
        # layout: default
        # title: Installing and Using PIP
        # nav_order: 10
        # description: How to install the Python package manager PIP.
        # grand_parent: Solutions
        # parent: Chapter 12
        # has_children: false
        # ---
        
        # Echo the above Liquid markup language to ./chapter_12/pip_markup_header.tmp
        echo "---" > ./chapter_12/pip_markup_header.tmp
        echo "layout: default" >> ./chapter_12/pip_markup_header.tmp
        echo "title: Installing and Using PIP" >> ./chapter_12/pip_markup_header.tmp
        echo "nav_order: 10" >> ./chapter_12/pip_markup_header.tmp
        echo "description: How to install the Python package manager PIP." >> ./chapter_12/pip_markup_header.tmp
        echo "grand_parent: Solutions" >> ./chapter_12/pip_markup_header.tmp
        echo "parent: Chapter 12" >> ./chapter_12/pip_markup_header.tmp
        echo "has_children: false" >> ./chapter_12/pip_markup_header.tmp
        echo "---" >> ./chapter_12/pip_markup_header.tmp
        # Rename installing_pip.tmp to installing_pip.md
        mv ./chapter_12/installing_pip.tmp ./chapter_12/installing_pip.md
        # Remove the temporary file
        rm ./chapter_12/pip_markup_header.tmp