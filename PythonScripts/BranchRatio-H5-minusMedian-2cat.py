#to parse the tree file and write the ratio of stalk and head domain into the tree branch metadata
#Xueting Qiu
#2019 June
#ref:https://groups.google.com/forum/#!topic/dendropy-users/J0qQZ8WwJYQ
#The code doesn't like special characters in the taxa, like {}
##It doesnt like the underscore only in the code as well, change it to |

#locate the metadata
import dendropy
ds=dendropy.DataSet.get_from_path("/Volumes/Xueting2019/0617-serverdownload-needed/0603-H5-Egypt-all-branchrates/comb/branchRatio-comparedtoMedian/H5outfile-comparedtoMedian.tree", "nexus", extract_comment_metadata=True)
#print(ds.annotations)


for trees in ds.tree_lists:
    #print(trees.annotations)
    for tree in trees:
        #print(tree.annotations)
        for nd in tree:
            #print(nd.annotations)
            #nd.annotations.values_as_dict
            x=nd.annotations.get_value("HeadRatiodif")
            if x is None:
                continue;
            if float(x)>0:
                nd.HeadRatiodif2cat=1
            else:
                nd.HeadRatiodif2cat=0
            nd.annotations.add_bound_attribute("HeadRatiodif2cat")
            #print(nd.Head)
            y=nd.annotations.get_value("StalkRatiodif")
            if y is None:
                continue;
            if float(y)>0:
                nd.StalkRatiodif2cat=1
            else:
                nd.StalkRatiodif2cat=0
            nd.annotations.add_bound_attribute("StalkRatiodif2cat")  
            #print(tree.as_string("nexus")) 
            ds.write_to_path('H5outfileWithMedian2cats.tree','nexus',
        suppress_taxa_blocks=None,
        suppress_block_titles=None,
        file_comments=[],
        preamble_blocks=[],
        supplemental_blocks=[],
        allow_multiline_comments=True,
        suppress_leaf_taxon_labels=False,
        suppress_leaf_node_labels=True,
        suppress_internal_taxon_labels=False,
        suppress_internal_node_labels=False,
        suppress_rooting=False,
        suppress_edge_lengths=False,
        unquoted_underscores=False,
        preserve_spaces=True,
        store_tree_weights=False,
        translate_tree_taxa=True,
        suppress_annotations=False,
        annotations_as_nhx=False,
        suppress_item_comments=False,
        node_label_element_separator=' ',
        node_label_compose_fn=None,
        edge_label_compose_fn=None,
        real_value_format_specifier='',
        ignore_unrecognized_keyword_arguments=False,
        )
        
        
#stalk dn/ds median=0.21750585069
#head dn/ds median=0.6718
