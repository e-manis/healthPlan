## Dat0r

- Document => Entity
- DocumentType => EntityType
- Entity-parent and entity-root
- Attribute-parent and attribute-root
- Type-parent and type-root
- Rename interfaces to use "Interface" suffix
- Support closed entity definitions (read only)
- Finish field-path implementation
- Support custom attribute short-names

## Honeybee

### Core

#### CQRS
- Document Model
- AggregateRoot Model
- Make the aggregate root moe write aware (applyEvent, handleUserCreated, etc...)
- Introduce commands for manipulating trees

#### Workflow
- Define possible tasks per workflow state
- Move the workflow statemachine into the AggregateRoot itself
- remove legavy stuff like plugins etc.

#### API DTO's and Validation
- QueryValidators
- CommandValidators (command validators divide payload into: asset, reference and values)
- QuerySpecification as Interface and Object
- Adjust QueryBuilder accordingly


#### EventSource
- Introduce a ConflictResolver for mediating concurrency conflicts

#### Projections
- Introduce a document/entity that represents a trees current state
- Reference projection synchronisation (removing references, adding reference, listening to all related BC's)


### Ui

#### List

#### Edit

#### Hierachy

#### Batch

#### Verknüpfungs-Tool
- Adjust the renderers to use the new Interfaces
- Text Input Rendering
- Textarea Input-Rendering
- Reference Input-Rendering
- TextCollection Input-Rendering
- Embeded Document Input-Rendering
- Batch select view
- Image Widget
- Referenzbrowser
- InputView
- TreeView


#### Project Template

- code generation

#### Showcase

- Asset Module
- Article Module
- Category Module
- Preapre Demo
