#import "template.typ": *

#show: resume.with(
  font-size: 10pt,
  photo: "profile.jpg"
)[ 
  #set align(right)
  = 伏西雨
  #h(0.5em)

  #set align(left)
  #info(
    color: colors.theme,
    (
      icon: icons.fa-phone,
      content: "(+86) 15982201158",
    ),
    (
      icon: icons.fa-github,
      content: "GitHub@fu050409",
      link: "https://github.com/fu050409",
    ),
    (
      icon: icons.fa-envelope,
      content: "fu050409@163.com",
      link: "mailto:fu050409@163.com",
    ),
    (
      icon: icons.fa-envelope,
      content: "fu050409@gmail.com",
      link: "mailto:fu050409@gmail.com",
    ),
  )
  
  == #icons.fa-wrench 技术栈

  #tech[ 语言 ]
  - #tech-stack(level: "精通", "Rust", "Python")
  - #tech-stack(level: "精通", "TypeScript", "JavaScript")
  - #tech-stack(level: "熟悉", "C")

  #tech[ 前端 ]
  - #tech-stack(level: "精通", "HTML5")
  - #tech-stack(level: "精通", "Node.js", "Vue.js")
  - #tech-stack(level: "精通", "Rust WebAssembly")
  - #tech-stack(level: "熟悉", "TailwindCSS", "UnoCSS")
  - #tech-stack(level: "熟悉", "React")

  #tech[ 后端 ]
  - #tech-stack(level: "精通", "Django", "Flask", "FastAPI")
  - #tech-stack(level: "熟悉", "Rocket", "Actix", "Axum")

  #tech[ 深度学习 ]
  - #tech-stack(level: "熟悉", "PyTorch", "TensorFlow")

  #tech[ DevOps ]
  - #tech-stack(level: "熟悉", "GitHub Actions")

  == #icons.fa-award 荣誉

  #sidebar(
    stack({
      linebreak()
      linebreak()
      v(0.8em)
      text(size: 0.7em, "2024")
      linebreak()
      v(1.2em)
      text(size: 0.7em, "2023")
    }),
    stack({
      text(size: 0.7em, "国家级大创项目验收成功")
      linebreak()
      text(size: 0.7em, "多个省级大创项目验收成功")
      linebreak()
      text(size: 0.7em, "二等奖学金")
      linebreak()
      text(size: 0.7em, "蓝桥杯Python省级一等奖")
      linebreak()
      text(size: 0.7em, "三等奖学金")
      linebreak()
      text(size: 0.7em, "Python计算机二级")
    })
  )
]

== #icons.fa-graduation-cap 教育背景

#space-between(
  [ *西南石油大学* 机电工程学院 智能感知工程 ],
  date[ 2023 年 09 月 - 今 ],
)

== #icons.fa-work 实习经历

#item(
  [ *字节跳动 * ],
  [ *前端开发* ],
  date[ 2025 年 06 月 – 2025 年 09 月 ],
)
#tech[ 抖音生活服务AI应用 ]

负责抖音生活服务AI应用的前端开发工作，包括AI旅行规划师、AI问答等产品，参与AI应用的功能设计与实现，优化用户体验。

== #icons.fa-code 项目经历

#item(
  link(
    "https://github.com/farm-fe/farm/",
    [ *Farm 前端编译器* ],
  ),
  [ *社区开源项目* ],
  date[ 2024 年 06 月 – 今 ],
)

#tech[ Rust Node.js 前端基建 ]

使用Rust编写的极速的前端编译器。作为*核心贡献者*长期参与Farm维护，使用CodSpeed细粒度进行基准测试和性能优化，同时为Farm生态做出了重要贡献。

#item(
  box({
    [ *MateChat* ]
    link(
      "https://github.com/DevCloudFE/matechat-react",
      [ *React* ]
    )
    [ & ]
    link(
      "https://gitcode.com/DevCloudFE/MateChat",
      [ *Vue* ]
    )
  }),
  [ *华为开源项目* ],
  date[ 2024 年 05 月 – 今 ],
)

#tech[ React Vue.js 企业级组件库 AI应用 ]

MateChat是前端智能化场景解决方案UI库，让用户轻松构建AI应用。本人作为*项目负责人*参与MateChat React的组件、文档站点的维护，为React版本的MateChat兼容Shadcn生态体系。与此同时，本人作为*项目维护者*参与MateChat Vue的开发。

#item(
  link(
    "https://github.com/swpu-acm/",
    [ *AlgoHub 算法工坊* ],
  ),
  [ *实验室开源项目* ],
  date[ 2024 年 11 月 – 2024 年 12 月 ],
)

#tech[ Rust ACM/OI Linux 前端 后端 数据库 ]

使用Rust编写的高并发的算法竞赛平台，能够实现对用户提交的代码进行评测并返回结果，同时能够实现对用户提交的代码进行版本管理和代码托管。本人为*项目发起者*。

#v(0.5em)

- 项目包含客户端（包括前端）、后端及代码评测服务器三部分，使用Rust编写，使用`tokio`作为异步驱动核心。
- 评测服务器中，为部分高延时操作手动实现`Futures`以提高性能，基于Seccomp实现了对用户提交代码的沙箱化运行，使用`libc`实现了对代码的系统调用拦截，确保评测服务器的安全性。
- 项目使用`rocket`作为Web框架，使用SurrealDB作为数据库，使用`redis`作为缓存层。

#item(
  box({
    link(
      "https://github.com/HydroRoll-Team/infini",
      [ *Infini* ]
    )
    [ & ]
    link(
      "https://github.com/HydroRoll-Team/ipm",
      [ *IPM* ]
    )
  }),
  [ *社区开源项目* ],
  date[ 2024 年 06 月 – 2024 年 12 月 ],
)

#tech[ Python 事件驱动 包管理器 流式数据 ]

面向内容生成的 Python 输入输出流框架及其包管理器，本人为项目*核心贡献者*。

#item(
  link(
    "https://github.com/noctisynth/oblivion-rust",
    [ *Oblivion 加密传输协议* ],
  ),
  [ *个人开源项目* ],
  date[ 2023 年 10 月 - 2024 年 06 月 ],
)

#tech[ Rust 网络 高并发 服务端框架 传输协议 加密算法 ]

全双工的端到端加密传输协议，使用Rust编写客户端、服务端框架。

#v(0.5em)

- 此项目本意用于作为Websocket的替代协议。能够在1ms以内实现本地回环握手并在过程中基于ECDHE和HKDF算法进行密钥共享生成AES密钥，随后的长连接会话中持续使用此密钥进行数据的双向加密传输，基于MTU动态对数据包进行分块发送。
- Oblivion使用`tokio`作为异步驱动核心，使用被广泛认可的`ring`作为加密原语库。基准测试显示，Oblivion能够实现服务端异步安全下的高并发运行。

#item(
  link(
    "https://github.com/noctisynth/Moonstone",
    [ *Moonstone 月长石通讯* ],
  ),
  [ *个人开源项目* ],
  date[ 2023 年 11 月 - 2024 年 5 月 ],
)

#tech[ Rust Tauri 前端 后端 桌面端 去中心化 ]

面向通讯安全的去中心化端到端加密即时通讯软件。

#v(0.5em)

- Moonstone基于上述Oblivion协议库实现全双工加密数据传输。
- 客户端页面基于Vue.js，以社群为通讯单元，持使用Markdown语法。使用Tauri 2框架集成前端，支持跨平台编译。

== #icons.fa-building-columns 校园经历

#space-between(
  [ 西南石油大学校ACM实验室负责人 ],
  date[ 2024 年 08 月 – 今 ],
)

#space-between(
  [ 西南石油大学开源协会创办者 ],
  date[ 2024 年 05 月 – 今 ],
)
