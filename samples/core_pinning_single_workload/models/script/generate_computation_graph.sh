python3 mlir_flow_parser.py samples/core_pinning_single_workload/models/phases/dronet.7.stream.mlir   --visualize dronet_dag.png    --export-json dronet_graph.json

# python3 scripts/postprocess_dispatch_graph.py   samples/core_pinning_single_workload/models/dispatch_graphs/dronet_dispatch_graph.dot   dronet_graph_aligned.json   --out dronet_graph_aligned.json   --png dronet_dag2.png
                         
python3 scripts/dot_dispatch_parser.py samples/core_pinning_single_workload/models/dispatch_graphs/dronet_dispatch_graph.dot --json-out dronet_dispatch_deps.json --png dronet_dispatch_dag.png


/scratch2/merlin/samples/robotic-NN/pytorch_workload/computation_graph/script/dot_dispatch_parser.py