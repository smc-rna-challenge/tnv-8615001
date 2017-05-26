baseCommand: [FusionRNADT]
class: CommandLineTool
cwlVersion: v1.0
doc: 'rapmap: fusion count detection'
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/tnv-8615001-rnadt-fusion:1.0.0'}
inputs:
- id: fastq1
  inputBinding: {position: 3, prefix: '-1'}
  type: File
- id: fastq2
  inputBinding: {position: 4, prefix: '-2'}
  type: File
- id: gtffn
  inputBinding: {position: 6, prefix: -g}
  type: File
- id: indexDir
  inputBinding: {position: 1, prefix: -i}
  type: Directory
- id: libtype
  inputBinding: {position: 2, prefix: -l}
  type: string
- id: output_name
  inputBinding: {position: 7, prefix: -o}
  type: string
- id: threads
  inputBinding: {position: 5, prefix: -p}
  type: ['null', int]
outputs:
- id: output
  outputBinding: {glob: $(inputs.output_name)}
  type: Directory
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 1, ramMin: 80000}
