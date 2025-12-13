function print_bitrate --description "Display bit rate information for one or more audio files."
    # Parse arguments
    argparse h/help -- $argv
    or return

    # Handle --help flag
    if set -q _flag_help
        echo "Usage: print_bitrate FILE [FILE...]"
        echo ""
        echo "Display bit rate information for one or more audio files."
        echo ""
        echo "Arguments:"
        echo "  FILE    One or more audio file paths (at least one required)"
        echo ""
        echo "Options:"
        echo "  -h/--help  Show this help message"
        return 0
    end
    
    if test (count $argv) -eq 0
        print_bitrate --help
        return 0
    end

    # Process each file
    for filepath in $argv
        set -l bps (afinfo "$filepath" | grep "bit rate")
        printf '%s –> %s\n' $filepath $bps
    end
end
