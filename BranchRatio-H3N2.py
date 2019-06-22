#to parse the tree file and write the ratio of stalk and head domain into the tree branch metadata
#Xueting Qiu
#2019 June
#ref:https://groups.google.com/forum/#!topic/dendropy-users/J0qQZ8WwJYQ

#locate the metadata
import dendropy
ds=dendropy.DataSet.get_from_path("/Users/xq25163/Desktop/codingTest/H3N2-parBranch-combanno.trees", "nexus", extract_comment_metadata=True)
#print(ds.annotations)


for trees in ds.tree_lists:
    #print(trees.annotations)
    for tree in trees:
        #print(tree.annotations)
        for nd in tree:
            #print(nd.annotations)
            #nd.annotations.values_as_dict
            x1=nd.annotations.get_value("Head1+2.rate_median")
            #x11=str(x1)
            #print(x11)
            x2=nd.annotations.get_value("Head3.rate_median")
            if x1 is None or x2 is None:
                continue;
            nd.HeadRatio=float(x1)/float(x2)
            #print(nd.HeadRatio)
            nd.annotations.add_bound_attribute("HeadRatio")
            #print(nd.Head)
            y1=nd.annotations.get_value("Stalk1+2.rate_median")
            y2=nd.annotations.get_value("Stalk3.rate_median")
            if y1 is None or y2 is None:
                continue;
            nd.StalkRatio=float(y1)/float(y2)
            nd.annotations.add_bound_attribute("StalkRatio")  
            #print(tree.as_string("nexus")) 
            ds.write_to_path('H3N2outfileWithMedian.tree','nexus',
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
        preserve_spaces=False,
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