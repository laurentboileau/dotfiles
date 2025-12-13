function delete_where_from --description "Delete the com.apple.metadata:kMDItemWhereFroms extended attribute on files."
    # Parse arguments
    argparse h/help -- $argv
    or return

    # Handle --help flag
    if set -q _flag_help
        echo "Usage: delete_where_from FILE [FILE...]"
        echo ""
        echo "Delete the com.apple.metadata:kMDItemWhereFroms extended attribute on files."
        echo ""
        echo "Arguments:"
        echo "  FILE    One or more files"
        echo ""
        echo "Options:"
        echo "  -h/--help  Show this help message"
        return 0
    end
    
    if test (count $argv) -eq 0
        delete_where_from --help
        return 0
    end

    # Process each file
    for filepath in $argv
        xattr -d com.apple.metadata:kMDItemWhereFroms $filepath
    end
end
