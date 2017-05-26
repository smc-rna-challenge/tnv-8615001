baseCommand: [TxIndexer]
class: CommandLineTool
cwlVersion: v1.0
doc: indexing transcript sequences
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/tnv-8615001-rnadt-fusion:1.0.0'}
inputs:
- id: output_name
  inputBinding: {position: 2, prefix: -o}
  type: string
- id: txFasta
  inputBinding: {position: 1, prefix: -t}
  type: File
outputs:
- id: output
  outputBinding: {glob: $(inputs.output_name)}
  type: Directory
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 1, ramMin: 80000}
