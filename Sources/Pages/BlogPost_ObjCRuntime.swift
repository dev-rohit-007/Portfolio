import Foundation
import Ignite

struct BlogPost_ObjCRuntime: StaticPage {
    var title = "Objective-C Runtime"
    var path = "/blog/objective-c-runtime"
    var description = "Understanding the Dynamic Features of Objective-C Runtime — messaging, method swizzling, introspection, and more."

    var body: some HTML {
        Section {
            Section {
                // Article header
                Section {
                    Text("Objective-C Runtime")
                        .class("blog-post-title")

                    Text("Understanding the Dynamic Features of Objective-C")
                        .class("blog-post-subtitle")

                    Section {
                        Text {
                            Image(systemName: "person-circle")
                            Span(" Rohit Mishra")
                        }
                        .class("blog-post-author")

                        Text {
                            Image(systemName: "calendar3")
                            Span(" Dec 5, 2024")
                        }
                        .class("blog-post-date")

                        Text {
                            Image(systemName: "clock")
                            Span(" 15 min read")
                        }
                        .class("blog-post-read-time")
                    }
                    .class("blog-post-meta")
                }
                .class("blog-post-header")

                // Article body
                Section {
                    Text("Objectives")
                        .class("blog-h2")

                    Section {
                        Text("Understand the basics of Objective-C runtimes, its types and its features")
                            .class("blog-list-item")
                        Text("Gain understanding of various Objective-C runtime methods")
                            .class("blog-list-item")
                        Text("Dynamically create and modify objects at runtime")
                            .class("blog-list-item")
                        Text("Understand associative reference methods and their usage")
                            .class("blog-list-item")
                        Text("Understanding Objective-C selectors and messaging")
                            .class("blog-list-item")
                    }
                    .class("blog-list")

                    // Introduction
                    Text("Introduction to Objective-C Runtimes")
                        .class("blog-h2")

                    Text("The Objective-C runtime is a runtime library, written mainly in C & Assembler. It provides the necessary infrastructure for message passing, method dispatch, dynamic method resolution, introspection, and other runtime operations.")
                        .class("blog-paragraph")

                    Text("Objective-C has two main runtimes: the \"Classic\" runtime and the \"Modern\" runtime.")
                        .class("blog-paragraph")

                    // Classic Runtime
                    Text("1. Classic Objective-C Runtime")
                        .class("blog-h3")

                    Text("Based on the C language, it provides the foundation for object-oriented programming in Objective-C. Key features include dynamic method resolution and message passing — allowing objects to respond to messages even if the corresponding method is not defined at compile time.")
                        .class("blog-paragraph")

                    // Modern Runtime
                    Text("2. Modern Objective-C Runtime")
                        .class("blog-h3")

                    Text("Introduced with Objective-C 2.0, it retains all Classic features and adds automatic property synthesis via @property, automatic reference counting (ARC), associated objects, and faster message dispatch.")
                        .class("blog-paragraph")

                    // Key Features
                    Text("Key Runtime Features")
                        .class("blog-h2")

                    Section {
                        Section {
                            Text("Messaging")
                                .class("blog-feature-title")
                            Text("Objects communicate by sending messages. The runtime handles dispatch, determining the appropriate method based on the class hierarchy.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")

                        Section {
                            Text("Method Swizzling")
                                .class("blog-feature-title")
                            Text("Change the implementation of a method dynamically at runtime — useful for overriding, extending, or intercepting method calls.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")

                        Section {
                            Text("Dynamic Method Resolution")
                                .class("blog-feature-title")
                            Text("Objects can respond to messages even if the method isn't defined at compile time. Methods can be added dynamically using forwarding.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")

                        Section {
                            Text("Introspection")
                                .class("blog-feature-title")
                            Text("Inspect and manipulate classes and objects dynamically — retrieve class info, create classes, add methods, and modify instance variables at runtime.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")

                        Section {
                            Text("Associated Objects")
                                .class("blog-feature-title")
                            Text("Associate arbitrary data with an object dynamically — add custom properties to existing classes without subclassing.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")

                        Section {
                            Text("Protocol Support")
                                .class("blog-feature-title")
                            Text("The runtime handles protocol conformance checking and dynamically adding or removing protocol support from classes.")
                                .class("blog-feature-desc")
                        }
                        .class("blog-feature-card")
                    }
                    .class("blog-feature-grid")

                    // NSObject Methods
                    Text("NSObject Methods")
                        .class("blog-h2")

                    Text("The NSObject class is the root class of most Objective-C class hierarchies. It provides essential methods inherited by all Objective-C classes.")
                        .class("blog-paragraph")

                    Text("init & dealloc")
                        .class("blog-h3")
                    Text("init is the designated initializer — sets initial state. dealloc is called during deallocation for cleanup like releasing retained resources.")
                        .class("blog-paragraph")

                    Text("copy & mutableCopy")
                        .class("blog-h3")
                    Text("copy creates an immutable shallow copy. mutableCopy creates a mutable deep copy, copying referenced objects too.")
                        .class("blog-paragraph")

                    Text("isEqual: & hash")
                        .class("blog-h3")
                    Text("isEqual: compares object equality based on properties. hash returns an integer hash value used in collections like NSSet and NSDictionary.")
                        .class("blog-paragraph")

                    Text("description & debugDescription")
                        .class("blog-h3")
                    Text("description returns a string representation for logging. debugDescription provides more detailed info for debugging purposes.")
                        .class("blog-paragraph")

                    // Code example
                    Section {
                        Text("@interface Person : NSObject <NSCopying>\n@property (nonatomic, strong) NSString *name;\n@property (nonatomic, assign) NSInteger age;\n@end\n\n- (BOOL)isEqual:(id)object {\n    if (self == object) return YES;\n    if (![object isKindOfClass:[Person class]]) return NO;\n    Person *other = (Person *)object;\n    return [self.name isEqualToString:other.name]\n        && self.age == other.age;\n}")
                            .class("blog-code-text")
                    }
                    .class("blog-code-block")

                    // Runtime Methods
                    Text("Runtime Methods")
                        .class("blog-h2")

                    Text("Runtime methods provide a way to introspect and manipulate classes, methods, and properties at runtime. They enable dynamic behavior and flexibility.")
                        .class("blog-paragraph")

                    Text("class_getName & class_getSuperclass")
                        .class("blog-h3")
                    Text("Retrieve the name or superclass of a class dynamically at runtime.")
                        .class("blog-paragraph")

                    Text("method_getName & method_getTypeEncoding")
                        .class("blog-h3")
                    Text("Retrieve the selector name or type encoding of a method at runtime.")
                        .class("blog-paragraph")

                    Section {
                        Text("const char *className = class_getName([Person class]);\nClass superclass = class_getSuperclass([Person class]);\n\n// Dynamically add a method\nSEL selector = @selector(greet);\nIMP imp = imp_implementationWithBlock(^{\n    NSLog(@\"Hello from dynamic method!\");\n});\nclass_addMethod([Person class], selector, imp, \"v@:\");")
                            .class("blog-code-text")
                    }
                    .class("blog-code-block")

                    // Class Definitions
                    Text("Class Definition Methods")
                        .class("blog-h2")

                    Text("These methods allow dynamic class creation and modification at runtime — adding methods, properties, and instance variables on the fly.")
                        .class("blog-paragraph")

                    Text("objc_allocateClassPair & objc_registerClassPair")
                        .class("blog-h3")
                    Text("Create a new class at runtime and register it with the Objective-C runtime system. Enables dynamic class creation.")
                        .class("blog-paragraph")

                    Text("class_addMethod & class_replaceMethod")
                        .class("blog-h3")
                    Text("Dynamically add new methods or replace existing implementations in a class at runtime.")
                        .class("blog-paragraph")

                    Section {
                        Text("// Create a new class at runtime\nClass newClass = objc_allocateClassPair(\n    [MyClass class], \"NewClass\", 0\n);\n\n// Add a method\nvoid (^block)(id, SEL) = ^(id self, SEL _cmd) {\n    NSLog(@\"New Method\");\n};\nclass_addMethod(newClass, @selector(newMethod),\n    imp_implementationWithBlock(block), \"v@:\");\n\n// Register and use\nobjc_registerClassPair(newClass);\nid obj = [[newClass alloc] init];\n[obj performSelector:@selector(newMethod)];")
                            .class("blog-code-text")
                    }
                    .class("blog-code-block")

                    // Associative References
                    Text("Associative References")
                        .class("blog-h2")

                    Text("Associative references let you attach additional objects to existing objects at runtime using a unique key — without subclassing or modifying the original class.")
                        .class("blog-paragraph")

                    Section {
                        Text("// Attach custom data\nNSNumber *age = @(30);\nobjc_setAssociatedObject(person, @\"age\", age,\n    OBJC_ASSOCIATION_RETAIN);\n\n// Retrieve it\nNSNumber *retrieved = objc_getAssociatedObject(\n    person, @\"age\"\n);\n\n// Remove all associations\nobjc_removeAssociatedObjects(person);")
                            .class("blog-code-text")
                    }
                    .class("blog-code-block")

                    // Selectors
                    Text("Selectors")
                        .class("blog-h2")

                    Text("A selector is a way to refer to a specific method — essentially the method name with argument and return type info. Selectors enable dynamic method invocation at runtime.")
                        .class("blog-paragraph")

                    Section {
                        Text("// Create selectors\nSEL sel1 = NSSelectorFromString(@\"doSomething\");\nSEL sel2 = @selector(doSomethingWithParam:);\n\n// Get implementation\nIMP imp = class_getMethodImplementation(\n    [MyClass class], sel1\n);\n\n// Method swizzling\nMethod m1 = class_getInstanceMethod(cls, sel1);\nMethod m2 = class_getInstanceMethod(cls, sel2);\nmethod_exchangeImplementations(m1, m2);")
                            .class("blog-code-text")
                    }
                    .class("blog-code-block")

                    // Messaging
                    Text("Objective-C Messaging")
                        .class("blog-h2")

                    Text("Messaging is the core dispatch mechanism. When a message is sent to an object, the runtime resolves the method and executes its implementation.")
                        .class("blog-paragraph")

                    Text("Message Forwarding")
                        .class("blog-h3")

                    Text("When an object doesn't implement a method, the runtime follows a forwarding chain:")
                        .class("blog-paragraph")

                    Section {
                        Text("1. forwardingTargetForSelector: — redirect to another object")
                            .class("blog-list-item")
                        Text("2. methodSignatureForSelector: — construct a method signature")
                            .class("blog-list-item")
                        Text("3. forwardInvocation: — handle the invocation manually")
                            .class("blog-list-item")
                        Text("4. If none handled — \"unrecognized selector\" exception")
                            .class("blog-list-item")
                    }
                    .class("blog-list")

                    // References
                    Text("References")
                        .class("blog-h2")

                    Section {
                        Text {
                            Link("Apple: Objective-C Runtime", target: "https://developer.apple.com/documentation/objectivec/objective-c_runtime")
                        }
                        .class("blog-list-item")

                        Text {
                            Link("Apple: NSObject", target: "https://developer.apple.com/documentation/objectivec/nsobject")
                        }
                        .class("blog-list-item")
                    }
                    .class("blog-list")
                }
                .class("blog-post-body")

            }
            .class("blog-post-container")
        }
        .class("blog-post-page")
    }
}
